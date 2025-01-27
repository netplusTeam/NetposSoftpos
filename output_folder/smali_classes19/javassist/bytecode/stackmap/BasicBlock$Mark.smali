.class Ljavassist/bytecode/stackmap/BasicBlock$Mark;
.super Ljava/lang/Object;
.source "BasicBlock.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/BasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Mark"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljavassist/bytecode/stackmap/BasicBlock$Mark;",
        ">;"
    }
.end annotation


# instance fields
.field alwaysJmp:Z

.field block:Ljavassist/bytecode/stackmap/BasicBlock;

.field catcher:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

.field jump:[Ljavassist/bytecode/stackmap/BasicBlock;

.field position:I

.field size:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "p"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    .line 125
    iput-object v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->jump:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->alwaysJmp:Z

    .line 127
    iput v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    .line 128
    iput-object v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->catcher:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    .line 129
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 114
    check-cast p1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->compareTo(Ljavassist/bytecode/stackmap/BasicBlock$Mark;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljavassist/bytecode/stackmap/BasicBlock$Mark;)I
    .locals 2
    .param p1, "obj"    # Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, -0x1

    return v0

    .line 135
    :cond_0
    iget v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    iget v1, p1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method setJump([Ljavassist/bytecode/stackmap/BasicBlock;IZ)V
    .locals 0
    .param p1, "bb"    # [Ljavassist/bytecode/stackmap/BasicBlock;
    .param p2, "s"    # I
    .param p3, "always"    # Z

    .line 139
    iput-object p1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->jump:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 140
    iput p2, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    .line 141
    iput-boolean p3, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->alwaysJmp:Z

    .line 142
    return-void
.end method
