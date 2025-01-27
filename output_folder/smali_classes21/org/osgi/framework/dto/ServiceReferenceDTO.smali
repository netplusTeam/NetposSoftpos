.class public Lorg/osgi/framework/dto/ServiceReferenceDTO;
.super Lorg/osgi/dto/DTO;
.source "ServiceReferenceDTO.java"


# instance fields
.field public bundle:J

.field public id:J

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

.field public usingBundles:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/osgi/dto/DTO;-><init>()V

    return-void
.end method
