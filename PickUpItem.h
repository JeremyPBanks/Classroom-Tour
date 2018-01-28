/*
****************************
* Property of Jeremy Banks *
****************************
*/

#pragma once

#include "GameFramework/Actor.h"
#include "Components/BoxComponent.h"
#include "Components/ShapeComponent.h"
#include "PickUpItem.generated.h"

UCLASS()
class FIRSTPERSONTEST_API APickUpItem : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	APickUpItem();

	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
	
	// Called every frame
	virtual void Tick( float DeltaSeconds ) override;

	UPROPERTY(VisibleAnywhere, Category = Character, meta = (AllowPrivateAccess = "true"))
	USceneComponent* root;

	//For Compiler
	UPROPERTY(VisibleAnywhere, Category = Character, meta = (AllowPrivateAccess = "true"))
	UStaticMeshComponent *SM_ptr;//Pick Up Item's Static Mesh

	UPROPERTY(VisibleAnywhere, Category = Character, meta = (AllowPrivateAccess = "true"))
	UShapeComponent *hitBox;

	UPROPERTY(EditDefaultsOnly, Category = Sounds)
	UAudioComponent *ImpactSound;
	/*UPROPERTY(VisibleAnywhere, Category = Character, meta = (AllowPrivateAccess = "true"))
	FRotator *rotator;*/

	UFUNCTION()
	void PlayerGrabPickUpItem(UPrimitiveComponent* OverlappedComp, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);
};