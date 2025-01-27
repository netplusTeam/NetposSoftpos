.class public Lorg/osgi/framework/dto/BundleDTO;
.super Lorg/osgi/dto/DTO;
.source "BundleDTO.java"


# instance fields
.field public id:J

.field public lastModified:J

.field public state:I

.field public symbolicName:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/osgi/dto/DTO;-><init>()V

    return-void
.end method
