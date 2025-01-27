.class public Lorg/osgi/framework/wiring/dto/BundleWiringDTO;
.super Lorg/osgi/dto/DTO;
.source "BundleWiringDTO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/framework/wiring/dto/BundleWiringDTO$NodeDTO;
    }
.end annotation


# instance fields
.field public bundle:J

.field public nodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/osgi/framework/wiring/dto/BundleWiringDTO$NodeDTO;",
            ">;"
        }
    .end annotation
.end field

.field public resources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/osgi/framework/wiring/dto/BundleRevisionDTO;",
            ">;"
        }
    .end annotation
.end field

.field public root:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/osgi/dto/DTO;-><init>()V

    .line 79
    return-void
.end method
