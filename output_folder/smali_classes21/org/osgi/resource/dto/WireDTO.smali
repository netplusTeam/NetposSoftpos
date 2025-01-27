.class public Lorg/osgi/resource/dto/WireDTO;
.super Lorg/osgi/dto/DTO;
.source "WireDTO.java"


# instance fields
.field public capability:Lorg/osgi/resource/dto/CapabilityRefDTO;

.field public provider:I

.field public requirement:Lorg/osgi/resource/dto/RequirementRefDTO;

.field public requirer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/osgi/dto/DTO;-><init>()V

    return-void
.end method
