.class abstract Ljavassist/bytecode/analysis/ControlFlow$Access;
.super Ljava/lang/Object;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/analysis/ControlFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Access"
.end annotation


# instance fields
.field all:[Ljavassist/bytecode/analysis/ControlFlow$Node;


# direct methods
.method constructor <init>([Ljavassist/bytecode/analysis/ControlFlow$Node;)V
    .locals 0
    .param p1, "nodes"    # [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Access;->all:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    return-void
.end method


# virtual methods
.method abstract entrances(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;
.end method

.method abstract exits(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;
.end method

.method node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 2
    .param p1, "b"    # Ljavassist/bytecode/stackmap/BasicBlock;

    .line 340
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Access;->all:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-object v1, p1

    check-cast v1, Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v1, v1, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method
