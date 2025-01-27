.class public Lorg/osgi/resource/dto/ResourceDTO;
.super Lorg/osgi/dto/DTO;
.source "ResourceDTO.java"


# instance fields
.field public capabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osgi/resource/dto/CapabilityDTO;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osgi/resource/dto/RequirementDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/osgi/dto/DTO;-><init>()V

    return-void
.end method
