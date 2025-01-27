.class public Ljavassist/compiler/ast/DoubleConst;
.super Ljavassist/compiler/ast/ASTree;
.source "DoubleConst.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected type:I

.field protected value:D


# direct methods
.method public constructor <init>(DI)V
    .locals 0
    .param p1, "v"    # D
    .param p3, "tokenId"    # I

    .line 31
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-wide p1, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iput p3, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    return-void
.end method

.method private static compute(IDDI)Ljavassist/compiler/ast/DoubleConst;
    .locals 3
    .param p0, "op"    # I
    .param p1, "value1"    # D
    .param p3, "value2"    # D
    .param p5, "newType"    # I

    .line 77
    sparse-switch p0, :sswitch_data_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 88
    :sswitch_0
    div-double v0, p1, p3

    .line 89
    .local v0, "newValue":D
    goto :goto_0

    .line 82
    .end local v0    # "newValue":D
    :sswitch_1
    sub-double v0, p1, p3

    .line 83
    .restart local v0    # "newValue":D
    goto :goto_0

    .line 79
    .end local v0    # "newValue":D
    :sswitch_2
    add-double v0, p1, p3

    .line 80
    .restart local v0    # "newValue":D
    goto :goto_0

    .line 85
    .end local v0    # "newValue":D
    :sswitch_3
    mul-double v0, p1, p3

    .line 86
    .restart local v0    # "newValue":D
    goto :goto_0

    .line 91
    .end local v0    # "newValue":D
    :sswitch_4
    rem-double v0, p1, p3

    .line 92
    .restart local v0    # "newValue":D
    nop

    .line 97
    :goto_0
    new-instance v2, Ljavassist/compiler/ast/DoubleConst;

    invoke-direct {v2, v0, v1, p5}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 7
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/DoubleConst;

    .line 60
    iget v0, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    const/16 v1, 0x195

    if-eq v0, v1, :cond_1

    iget v0, p2, Ljavassist/compiler/ast/DoubleConst;->type:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    const/16 v0, 0x194

    .local v0, "newType":I
    goto :goto_1

    .line 62
    .end local v0    # "newType":I
    :cond_1
    :goto_0
    const/16 v0, 0x195

    .line 66
    .restart local v0    # "newType":I
    :goto_1
    iget-wide v2, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iget-wide v4, p2, Ljavassist/compiler/ast/DoubleConst;->value:D

    move v1, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Ljavassist/compiler/ast/DoubleConst;->compute(IDDI)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v1

    return-object v1
.end method

.method private compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 6
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/IntConst;

    .line 70
    iget-wide v1, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    iget-wide v3, p2, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-double v3, v3

    iget v5, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    move v0, p1

    invoke-static/range {v0 .. v5}, Ljavassist/compiler/ast/DoubleConst;->compute(IDDI)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .param p1, "v"    # Ljavassist/compiler/ast/Visitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 46
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atDoubleConst(Ljavassist/compiler/ast/DoubleConst;)V

    .line 47
    return-void
.end method

.method public compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 1
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/ASTree;

    .line 50
    instance-of v0, p2, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p2

    check-cast v0, Ljavassist/compiler/ast/IntConst;

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/DoubleConst;->compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    instance-of v0, p2, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_1

    .line 53
    move-object v0, p2

    check-cast v0, Ljavassist/compiler/ast/DoubleConst;

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/DoubleConst;->compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public get()D
    .locals 2

    .line 33
    iget-wide v0, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 39
    iget v0, p0, Ljavassist/compiler/ast/DoubleConst;->type:I

    return v0
.end method

.method public set(D)V
    .locals 0
    .param p1, "v"    # D

    .line 35
    iput-wide p1, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    iget-wide v0, p0, Ljavassist/compiler/ast/DoubleConst;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
