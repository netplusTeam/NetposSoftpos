.class public Ljavassist/bytecode/stackmap/TypedBlock$Maker;
.super Ljavassist/bytecode/stackmap/BasicBlock$Maker;
.source "TypedBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypedBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Maker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;-><init>()V

    return-void
.end method


# virtual methods
.method protected makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 1
    .param p1, "size"    # I

    .line 125
    new-array v0, p1, [Ljavassist/bytecode/stackmap/TypedBlock;

    return-object v0
.end method

.method protected makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 1
    .param p1, "pos"    # I

    .line 120
    new-instance v0, Ljavassist/bytecode/stackmap/TypedBlock;

    invoke-direct {v0, p1}, Ljavassist/bytecode/stackmap/TypedBlock;-><init>(I)V

    return-object v0
.end method
