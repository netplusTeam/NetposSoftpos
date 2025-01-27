.class public Lorg/osgi/framework/wiring/dto/BundleRevisionDTO;
.super Lorg/osgi/resource/dto/ResourceDTO;
.source "BundleRevisionDTO.java"


# instance fields
.field public bundle:J

.field public symbolicName:Ljava/lang/String;

.field public type:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/osgi/resource/dto/ResourceDTO;-><init>()V

    return-void
.end method
