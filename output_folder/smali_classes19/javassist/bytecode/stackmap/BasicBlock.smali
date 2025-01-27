.class public Ljavassist/bytecode/stackmap/BasicBlock;
.super Ljava/lang/Object;
.source "BasicBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/stackmap/BasicBlock$Maker;,
        Ljavassist/bytecode/stackmap/BasicBlock$Mark;,
        Ljavassist/bytecode/stackmap/BasicBlock$Catch;,
        Ljavassist/bytecode/stackmap/BasicBlock$JsrBytecode;
    }
.end annotation


# instance fields
.field protected exit:[Ljavassist/bytecode/stackmap/BasicBlock;

.field protected incoming:I

.field protected length:I

.field protected position:I

.field protected stop:Z

.field protected toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 55
    iput v0, p0, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    .line 56
    return-void
.end method

.method public static find([Ljavassist/bytecode/stackmap/BasicBlock;I)Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 5
    .param p0, "blocks"    # [Ljavassist/bytecode/stackmap/BasicBlock;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 61
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 62
    .local v2, "b":Ljavassist/bytecode/stackmap/BasicBlock;
    iget v3, v2, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    if-gt v3, p1, :cond_0

    iget v4, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_0

    .line 63
    return-object v2

    .line 61
    .end local v2    # "b":Ljavassist/bytecode/stackmap/BasicBlock;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no basic block at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "cname":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 84
    .local v2, "i":I
    if-gez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {p0, v0}, Ljavassist/bytecode/stackmap/BasicBlock;->toString2(Ljava/lang/StringBuffer;)V

    .line 87
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected toString2(Ljava/lang/StringBuffer;)V
    .locals 6
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 92
    const-string v0, "pos="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 94
    const-string v1, ", exit{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v0, p0, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    if-eqz v0, :cond_0

    .line 96
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 97
    .local v3, "b":Ljavassist/bytecode/stackmap/BasicBlock;
    iget v4, v3, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .end local v3    # "b":Ljavassist/bytecode/stackmap/BasicBlock;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const-string v0, "}, {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v0, p0, Ljavassist/bytecode/stackmap/BasicBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    .line 101
    .local v0, "th":Ljavassist/bytecode/stackmap/BasicBlock$Catch;
    :goto_1
    if-eqz v0, :cond_1

    .line 102
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, v0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->body:Ljavassist/bytecode/stackmap/BasicBlock;

    iget v2, v2, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, v0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->typeIndex:I

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v0, v0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->next:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    goto :goto_1

    .line 107
    :cond_1
    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    return-void
.end method
