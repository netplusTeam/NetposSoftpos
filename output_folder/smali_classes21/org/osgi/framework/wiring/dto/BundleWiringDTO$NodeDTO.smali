.class public Lorg/osgi/framework/wiring/dto/BundleWiringDTO$NodeDTO;
.super Lorg/osgi/resource/dto/WiringDTO;
.source "BundleWiringDTO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/wiring/dto/BundleWiringDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeDTO"
.end annotation


# instance fields
.field public current:Z

.field public inUse:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/osgi/resource/dto/WiringDTO;-><init>()V

    return-void
.end method
