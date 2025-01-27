.class Ljavassist/bytecode/StackMapTable$NewRemover;
.super Ljavassist/bytecode/StackMapTable$SimpleCopy;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewRemover"
.end annotation


# instance fields
.field posOfNew:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 1038
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$SimpleCopy;-><init>([B)V

    .line 1039
    iput p2, p0, Ljavassist/bytecode/StackMapTable$NewRemover;->posOfNew:I

    .line 1040
    return-void
.end method


# virtual methods
.method public fullFrame(II[I[I[I[I)V
    .locals 9
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "localTags"    # [I
    .param p4, "localData"    # [I
    .param p5, "stackTags"    # [I
    .param p6, "stackData"    # [I

    .line 1053
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    .line 1054
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1055
    aget v2, p5, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    aget v2, p6, v1

    iget v4, p0, Ljavassist/bytecode/StackMapTable$NewRemover;->posOfNew:I

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget v2, p5, v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget v2, p6, v2

    if-ne v2, v4, :cond_2

    .line 1057
    add-int/lit8 v0, v0, 0x1

    .line 1058
    add-int/lit8 v2, v0, -0x2

    new-array v2, v2, [I

    .line 1059
    .local v2, "stackTags2":[I
    add-int/lit8 v3, v0, -0x2

    new-array v3, v3, [I

    .line 1060
    .local v3, "stackData2":[I
    const/4 v4, 0x0

    .line 1061
    .local v4, "k":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 1062
    if-ne v5, v1, :cond_0

    .line 1063
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1065
    :cond_0
    aget v6, p5, v5

    aput v6, v2, v4

    .line 1066
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "k":I
    .local v6, "k":I
    aget v7, p6, v5

    aput v7, v3, v4

    move v4, v6

    .line 1061
    .end local v6    # "k":I
    .restart local v4    # "k":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1069
    .end local v5    # "j":I
    :cond_1
    move-object p5, v2

    .line 1070
    move-object p6, v3

    .line 1071
    goto :goto_3

    .line 1054
    .end local v2    # "stackTags2":[I
    .end local v3    # "stackData2":[I
    .end local v4    # "k":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
    .end local v1    # "i":I
    :cond_3
    :goto_3
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-super/range {v2 .. v8}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->fullFrame(II[I[I[I[I)V

    .line 1075
    return-void
.end method

.method public sameLocals(IIII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "stackTag"    # I
    .param p4, "stackData"    # I

    .line 1044
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    iget v0, p0, Ljavassist/bytecode/StackMapTable$NewRemover;->posOfNew:I

    if-ne p4, v0, :cond_0

    .line 1045
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->sameFrame(II)V

    goto :goto_0

    .line 1047
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->sameLocals(IIII)V

    .line 1048
    :goto_0
    return-void
.end method
