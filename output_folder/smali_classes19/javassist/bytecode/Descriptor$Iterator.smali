.class public Ljavassist/bytecode/Descriptor$Iterator;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/Descriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Iterator"
.end annotation


# instance fields
.field private curPos:I

.field private desc:Ljava/lang/String;

.field private index:I

.field private param:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-object p1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->curPos:I

    iput v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 788
    iput-boolean v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->param:Z

    .line 789
    return-void
.end method


# virtual methods
.method public currentChar()C
    .locals 2

    .line 806
    iget-object v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    iget v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->curPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 795
    iget v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    iget-object v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is2byte()Z
    .locals 2

    .line 812
    invoke-virtual {p0}, Ljavassist/bytecode/Descriptor$Iterator;->currentChar()C

    move-result v0

    .line 813
    .local v0, "c":C
    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isParameter()Z
    .locals 1

    .line 801
    iget-boolean v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->param:Z

    return v0
.end method

.method public next()I
    .locals 5

    .line 821
    iget v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 822
    .local v0, "nextPos":I
    iget-object v1, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 823
    .local v1, "c":C
    const/4 v2, 0x1

    const/16 v3, 0x28

    if-ne v1, v3, :cond_0

    .line 824
    iget v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    add-int/2addr v3, v2

    iput v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 825
    iget-object v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 826
    iput-boolean v2, p0, Ljavassist/bytecode/Descriptor$Iterator;->param:Z

    .line 829
    :cond_0
    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    .line 830
    iget v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    add-int/2addr v3, v2

    iput v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 831
    iget-object v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 832
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->param:Z

    .line 835
    :cond_1
    :goto_0
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_2

    .line 836
    iget-object v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 838
    :cond_2
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_4

    .line 839
    iget-object v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->desc:Ljava/lang/String;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 840
    .end local v0    # "nextPos":I
    .local v3, "nextPos":I
    if-lez v3, :cond_3

    goto :goto_1

    .line 841
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "bad descriptor"

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    .end local v3    # "nextPos":I
    .restart local v0    # "nextPos":I
    :cond_4
    add-int/lit8 v3, v0, 0x1

    .line 846
    .end local v0    # "nextPos":I
    .restart local v3    # "nextPos":I
    :goto_1
    iget v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    iput v0, p0, Ljavassist/bytecode/Descriptor$Iterator;->curPos:I

    .line 847
    iput v3, p0, Ljavassist/bytecode/Descriptor$Iterator;->index:I

    .line 848
    return v0
.end method
