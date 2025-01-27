.class Ljavassist/bytecode/StackMapTable$SwitchShifter;
.super Ljavassist/bytecode/StackMapTable$Shifter;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchShifter"
.end annotation


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMapTable;II)V
    .locals 1
    .param p1, "smt"    # Ljavassist/bytecode/StackMapTable;
    .param p2, "where"    # I
    .param p3, "gap"    # I

    .line 955
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljavassist/bytecode/StackMapTable$Shifter;-><init>(Ljavassist/bytecode/StackMapTable;IIZ)V

    .line 956
    return-void
.end method

.method static deleteGap([BII)[B
    .locals 5
    .param p0, "info"    # [B
    .param p1, "where"    # I
    .param p2, "gap"    # I

    .line 990
    add-int/2addr p1, p2

    .line 991
    array-length v0, p0

    .line 992
    .local v0, "len":I
    sub-int v1, v0, p2

    new-array v1, v1, [B

    .line 993
    .local v1, "newinfo":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 994
    if-ge v2, p1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    move v3, p2

    :goto_1
    sub-int v3, v2, v3

    aget-byte v4, p0, v2

    aput-byte v4, v1, v3

    .line 993
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 996
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method update(II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I

    .line 1001
    iget v0, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    .line 1002
    .local v0, "oldPos":I
    add-int v1, v0, p2

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    .line 1003
    move v1, p2

    .line 1004
    .local v1, "newDelta":I
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->where:I

    iget v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    if-ne v2, v3, :cond_1

    .line 1005
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->gap:I

    sub-int v1, p2, v2

    goto :goto_1

    .line 1006
    :cond_1
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->where:I

    if-ne v2, v0, :cond_2

    .line 1007
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->gap:I

    add-int v1, p2, v2

    .line 1011
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 1012
    return-void

    .line 1009
    :cond_2
    return-void
.end method

.method update(IIII)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "base"    # I
    .param p4, "entry"    # I

    .line 960
    iget v0, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    .line 961
    .local v0, "oldPos":I
    add-int v1, v0, p2

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    .line 962
    move v1, p2

    .line 963
    .local v1, "newDelta":I
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->where:I

    iget v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->position:I

    if-ne v2, v3, :cond_1

    .line 964
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->gap:I

    sub-int v1, p2, v2

    goto :goto_1

    .line 965
    :cond_1
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->where:I

    if-ne v2, v0, :cond_5

    .line 966
    iget v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->gap:I

    add-int v1, p2, v2

    .line 970
    :goto_1
    const/4 v2, 0x2

    const/16 v3, 0x40

    if-ge p2, v3, :cond_3

    .line 971
    if-ge v1, v3, :cond_2

    .line 972
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    add-int v3, v1, p3

    int-to-byte v3, v3

    aput-byte v3, v2, p1

    goto :goto_2

    .line 974
    :cond_2
    iget-object v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    invoke-static {v3, p1, v2}, Ljavassist/bytecode/StackMapTable$SwitchShifter;->insertGap([BII)[B

    move-result-object v2

    .line 975
    .local v2, "newinfo":[B
    int-to-byte v3, p4

    aput-byte v3, v2, p1

    .line 976
    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 977
    iput-object v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->updatedInfo:[B

    .line 978
    .end local v2    # "newinfo":[B
    goto :goto_2

    .line 980
    :cond_3
    if-ge v1, v3, :cond_4

    .line 981
    iget-object v3, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    invoke-static {v3, p1, v2}, Ljavassist/bytecode/StackMapTable$SwitchShifter;->deleteGap([BII)[B

    move-result-object v2

    .line 982
    .restart local v2    # "newinfo":[B
    add-int v3, v1, p3

    int-to-byte v3, v3

    aput-byte v3, v2, p1

    .line 983
    iput-object v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->updatedInfo:[B

    .line 984
    .end local v2    # "newinfo":[B
    goto :goto_2

    .line 986
    :cond_4
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$SwitchShifter;->info:[B

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 987
    :goto_2
    return-void

    .line 968
    :cond_5
    return-void
.end method
