.class public Lorg/osgi/resource/dto/WiringDTO;
.super Lorg/osgi/dto/DTO;
.source "WiringDTO.java"


# instance fields
.field public capabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osgi/resource/dto/CapabilityRefDTO;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public providedWires:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osgi/resource/dto/WireDTO;",
            ">;"
        }
    .end annotation
.end field

.field public requiredWires:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osgi/resource/dto/WireDTO;",
            ">;"
        }
    .end annotation
.end field

.field public requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osgi/resource/dto/RequirementRefDTO;",
            ">;"
        }
    .end annotation
.end field

.field public resource:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/osgi/dto/DTO;-><init>()V

    return-void
.end method
