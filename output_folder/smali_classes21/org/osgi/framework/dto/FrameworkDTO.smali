.class public Lorg/osgi/framework/dto/FrameworkDTO;
.super Lorg/osgi/dto/DTO;
.source "FrameworkDTO.java"


# instance fields
.field public bundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osgi/framework/dto/BundleDTO;",
            ">;"
        }
    .end annotation
.end field

.field public properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osgi/framework/dto/ServiceReferenceDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/osgi/dto/DTO;-><init>()V

    return-void
.end method
