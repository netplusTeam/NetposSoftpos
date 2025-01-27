.class Ljavassist/bytecode/StackMapTable$Shifter;
.super Ljavassist/bytecode/StackMapTable$Walker;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shifter"
.end annotation


# instance fields
.field exclusive:Z

.field gap:I

.field position:I

.field private stackMap:Ljavassist/bytecode/StackMapTable;

.field updatedInfo:[B

.field where:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMapTable;IIZ)V
    .locals 1
    .param p1, "smt"    # Ljavassist/bytecode/StackMapTable;
    .param p2, "where"    # I
    .param p3, "gap"    # I
    .param p4, "exclusive"    # Z

    .line 854
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Walker;-><init>(Ljavassist/bytecode/StackMapTable;)V

    .line 855
    iput-object p1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->stackMap:Ljavassist/bytecode/StackMapTable;

    .line 856
    iput p2, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    .line 857
    iput p3, p0, Ljavassist/bytecode/StackMapTable$Shifter;->gap:I

    .line 858
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->updatedInfo:[B

    .line 860
    iput-boolean p4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->exclusive:Z

    .line 861
    return-void
.end method

.method static insertGap([BII)[B
    .locals 5
    .param p0, "info"    # [B
    .param p1, "where"    # I
    .param p2, "gap"    # I

    .line 905
    array-length v0, p0

    .line 906
    .local v0, "len":I
    add-int v1, v0, p2

    new-array v1, v1, [B

    .line 907
    .local v1, "newinfo":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 908
    if-ge v2, p1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    move v3, p2

    :goto_1
    add-int/2addr v3, v2

    aget-byte v4, p0, v2

    aput-byte v4, v1, v3

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public appendFrame(II[I[I)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "tags"    # [I
    .param p4, "data"    # [I

    .line 920
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$Shifter;->update(II)V

    .line 921
    return-void
.end method

.method public chopFrame(III)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "k"    # I

    .line 915
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$Shifter;->update(II)V

    .line 916
    return-void
.end method

.method public doit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 864
    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable$Shifter;->parse()V

    .line 865
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->updatedInfo:[B

    if-eqz v0, :cond_0

    .line 866
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->stackMap:Ljavassist/bytecode/StackMapTable;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/StackMapTable;->set([B)V

    .line 867
    :cond_0
    return-void
.end method

.method public fullFrame(II[I[I[I[I)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "localTags"    # [I
    .param p4, "localData"    # [I
    .param p5, "stackTags"    # [I
    .param p6, "stackData"    # [I

    .line 926
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$Shifter;->update(II)V

    .line 927
    return-void
.end method

.method public sameFrame(II)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I

    .line 871
    const/4 v0, 0x0

    const/16 v1, 0xfb

    invoke-virtual {p0, p1, p2, v0, v1}, Ljavassist/bytecode/StackMapTable$Shifter;->update(IIII)V

    .line 872
    return-void
.end method

.method public sameLocals(IIII)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "stackTag"    # I
    .param p4, "stackData"    # I

    .line 876
    const/16 v0, 0x40

    const/16 v1, 0xf7

    invoke-virtual {p0, p1, p2, v0, v1}, Ljavassist/bytecode/StackMapTable$Shifter;->update(IIII)V

    .line 877
    return-void
.end method

.method update(II)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I

    .line 930
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 931
    .local v0, "oldPos":I
    add-int v1, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v1, v4

    iput v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 933
    iget-boolean v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->exclusive:Z

    if-eqz v4, :cond_2

    .line 934
    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    if-ge v0, v4, :cond_1

    if-gt v4, v1, :cond_1

    move v2, v3

    :cond_1
    move v1, v2

    .local v1, "match":Z
    goto :goto_1

    .line 936
    .end local v1    # "match":Z
    :cond_2
    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    if-gt v0, v4, :cond_3

    if-ge v4, v1, :cond_3

    move v2, v3

    :cond_3
    move v1, v2

    .line 938
    .restart local v1    # "match":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 939
    iget v2, p0, Ljavassist/bytecode/StackMapTable$Shifter;->gap:I

    add-int/2addr v2, p2

    .line 940
    .local v2, "newDelta":I
    iget-object v3, p0, Ljavassist/bytecode/StackMapTable$Shifter;->info:[B

    add-int/lit8 v4, p1, 0x1

    invoke-static {v2, v3, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 941
    iget v3, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->gap:I

    add-int/2addr v3, v4

    iput v3, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 943
    .end local v2    # "newDelta":I
    :cond_4
    return-void
.end method

.method update(IIII)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "base"    # I
    .param p4, "entry"    # I

    .line 880
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 881
    .local v0, "oldPos":I
    add-int v1, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v1, v4

    iput v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 883
    iget-boolean v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->exclusive:Z

    if-eqz v4, :cond_2

    .line 884
    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    if-ge v0, v4, :cond_1

    if-gt v4, v1, :cond_1

    move v2, v3

    .local v2, "match":Z
    :cond_1
    goto :goto_1

    .line 886
    .end local v2    # "match":Z
    :cond_2
    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    if-gt v0, v4, :cond_3

    if-ge v4, v1, :cond_3

    move v2, v3

    .line 888
    .restart local v2    # "match":Z
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 889
    iget v3, p0, Ljavassist/bytecode/StackMapTable$Shifter;->gap:I

    add-int v4, p2, v3

    .line 890
    .local v4, "newDelta":I
    add-int/2addr v1, v3

    iput v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 891
    const/16 v1, 0x40

    if-ge v4, v1, :cond_4

    .line 892
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->info:[B

    add-int v3, v4, p3

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    goto :goto_2

    .line 893
    :cond_4
    if-ge p2, v1, :cond_5

    .line 894
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->info:[B

    const/4 v3, 0x2

    invoke-static {v1, p1, v3}, Ljavassist/bytecode/StackMapTable$Shifter;->insertGap([BII)[B

    move-result-object v1

    .line 895
    .local v1, "newinfo":[B
    int-to-byte v3, p4

    aput-byte v3, v1, p1

    .line 896
    add-int/lit8 v3, p1, 0x1

    invoke-static {v4, v1, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 897
    iput-object v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->updatedInfo:[B

    .line 898
    .end local v1    # "newinfo":[B
    goto :goto_2

    .line 900
    :cond_5
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->info:[B

    add-int/lit8 v3, p1, 0x1

    invoke-static {v4, v1, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 902
    .end local v4    # "newDelta":I
    :cond_6
    :goto_2
    return-void
.end method
