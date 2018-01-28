/*
****************************
* Property of Jeremy Banks *
****************************
*/

#include "FirstPersonTest.h"
#include "PickUpItem.h"
#include "Components/StaticMeshComponent.h"


// Constructor
APickUpItem::APickUpItem()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	root = CreateDefaultSubobject<USceneComponent>(TEXT("Root"));
	this->RootComponent = root;
	SM_ptr = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("Static Mesh"));//TEXT sets what it will display in the editor
	SM_ptr->AttachToComponent(root, FAttachmentTransformRules::SnapToTargetNotIncludingScale);
	SM_ptr->SetMobility(EComponentMobility::Movable);//Allows the actor to be rotated and translated

	hitBox = CreateDefaultSubobject<UBoxComponent>(TEXT("PickUp Box"));
	hitBox->SetWorldScale3D(FVector(1.0f,1.0f,1.0f));
	hitBox->bGenerateOverlapEvents = true;
	hitBox->OnComponentBeginOverlap.AddDynamic(this,&APickUpItem::PlayerGrabPickUpItem);
	hitBox->AttachToComponent(root, FAttachmentTransformRules::SnapToTargetNotIncludingScale);

	ImpactSound = CreateDefaultSubobject<UAudioComponent>(TEXT("Impact Sound"));
	//ImpactSound->AttachTo(SM_ptr);
	//ImpactSound->SetActive(false);
	ImpactSound->Activate(false);
	ImpactSound->bStopWhenOwnerDestroyed = false;
}

// Called when the game starts or when spawned
void APickUpItem::BeginPlay()
{
	Super::BeginPlay();
}

// Called every frame
void APickUpItem::Tick( float DeltaTime )
{
	Super::Tick( DeltaTime );

	float rotationDisplacement = DeltaTime;
	this->AddActorLocalRotation(FRotator(0.0f, 115.0f, 0.0f) * rotationDisplacement);
}

void APickUpItem::PlayerGrabPickUpItem(UPrimitiveComponent * OverlappedComp, AActor * OtherActor, UPrimitiveComponent * OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult & SweepResult)
{
	//ImpactSound->SetActive(true);
	ImpactSound->Activate(true);
	this->SetActorHiddenInGame(true);
	//ImpactSound->Play();
	Sleep(7000);
	UE_LOG(LogTemp, Warning, TEXT("About to Destroy"));
	Destroy();
}