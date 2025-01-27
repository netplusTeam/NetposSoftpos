.class public Ljavassist/compiler/ast/IntConst;
.super Ljavassist/compiler/ast/ASTree;
.source "IntConst.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected type:I

.field protected value:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .param p1, "v"    # J
    .param p3, "tokenId"    # I

    .line 31
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-wide p1, p0, Ljavassist/compiler/ast/IntConst;->value:J

    iput p3, p0, Ljavassist/compiler/ast/IntConst;->type:I

    return-void
.end method

.method private compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 8
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/DoubleConst;

    .line 118
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-double v0, v0

    .line 119
    .local v0, "value1":D
    iget-wide v2, p2, Ljavassist/compiler/ast/DoubleConst;->value:D

    .line 121
    .local v2, "value2":D
    sparse-switch p1, :sswitch_data_0

    .line 138
    const/4 v4, 0x0

    return-object v4

    .line 132
    :sswitch_0
    div-double v4, v0, v2

    .line 133
    .local v4, "newValue":D
    goto :goto_0

    .line 126
    .end local v4    # "newValue":D
    :sswitch_1
    sub-double v4, v0, v2

    .line 127
    .restart local v4    # "newValue":D
    goto :goto_0

    .line 123
    .end local v4    # "newValue":D
    :sswitch_2
    add-double v4, v0, v2

    .line 124
    .restart local v4    # "newValue":D
    goto :goto_0

    .line 129
    .end local v4    # "newValue":D
    :sswitch_3
    mul-double v4, v0, v2

    .line 130
    .restart local v4    # "newValue":D
    goto :goto_0

    .line 135
    .end local v4    # "newValue":D
    :sswitch_4
    rem-double v4, v0, v2

    .line 136
    .restart local v4    # "newValue":D
    nop

    .line 141
    :goto_0
    new-instance v6, Ljavassist/compiler/ast/DoubleConst;

    iget v7, p2, Ljavassist/compiler/ast/DoubleConst;->type:I

    invoke-direct {v6, v4, v5, v7}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/IntConst;
    .locals 10
    .param p1, "op"    # I
    .param p2, "right"    # Ljavassist/compiler/ast/IntConst;

    .line 59
    iget v0, p0, Ljavassist/compiler/ast/IntConst;->type:I

    .line 60
    .local v0, "type1":I
    iget v1, p2, Ljavassist/compiler/ast/IntConst;->type:I

    .line 62
    .local v1, "type2":I
    const/16 v2, 0x193

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 66
    const/16 v2, 0x191

    .local v2, "newType":I
    goto :goto_1

    .line 68
    .end local v2    # "newType":I
    :cond_1
    const/16 v2, 0x192

    .restart local v2    # "newType":I
    goto :goto_1

    .line 63
    .end local v2    # "newType":I
    :cond_2
    :goto_0
    const/16 v2, 0x193

    .line 70
    .restart local v2    # "newType":I
    :goto_1
    iget-wide v3, p0, Ljavassist/compiler/ast/IntConst;->value:J

    .line 71
    .local v3, "value1":J
    iget-wide v5, p2, Ljavassist/compiler/ast/IntConst;->value:J

    .line 73
    .local v5, "value2":J
    sparse-switch p1, :sswitch_data_0

    .line 111
    const/4 v7, 0x0

    return-object v7

    .line 107
    :sswitch_0
    iget-wide v7, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-int v9, v5

    ushr-long/2addr v7, v9

    .line 108
    .local v7, "newValue":J
    move v2, v0

    .line 109
    goto :goto_2

    .line 103
    .end local v7    # "newValue":J
    :sswitch_1
    iget-wide v7, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-int v9, v5

    shr-long/2addr v7, v9

    .line 104
    .restart local v7    # "newValue":J
    move v2, v0

    .line 105
    goto :goto_2

    .line 99
    .end local v7    # "newValue":J
    :sswitch_2
    iget-wide v7, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-int v9, v5

    shl-long/2addr v7, v9

    .line 100
    .restart local v7    # "newValue":J
    move v2, v0

    .line 101
    goto :goto_2

    .line 90
    .end local v7    # "newValue":J
    :sswitch_3
    or-long v7, v3, v5

    .line 91
    .restart local v7    # "newValue":J
    goto :goto_2

    .line 93
    .end local v7    # "newValue":J
    :sswitch_4
    xor-long v7, v3, v5

    .line 94
    .restart local v7    # "newValue":J
    goto :goto_2

    .line 84
    .end local v7    # "newValue":J
    :sswitch_5
    div-long v7, v3, v5

    .line 85
    .restart local v7    # "newValue":J
    goto :goto_2

    .line 78
    .end local v7    # "newValue":J
    :sswitch_6
    sub-long v7, v3, v5

    .line 79
    .restart local v7    # "newValue":J
    goto :goto_2

    .line 75
    .end local v7    # "newValue":J
    :sswitch_7
    add-long v7, v3, v5

    .line 76
    .restart local v7    # "newValue":J
    goto :goto_2

    .line 81
    .end local v7    # "newValue":J
    :sswitch_8
    mul-long v7, v3, v5

    .line 82
    .restart local v7    # "newValue":J
    goto :goto_2

    .line 96
    .end local v7    # "newValue":J
    :sswitch_9
    and-long v7, v3, v5

    .line 97
    .restart local v7    # "newValue":J
    goto :goto_2

    .line 87
    .end local v7    # "newValue":J
    :sswitch_a
    rem-long v7, v3, v5

    .line 88
    .restart local v7    # "newValue":J
    nop

    .line 114
    :goto_2
    new-instance v9, Ljavassist/compiler/ast/IntConst;

    invoke-direct {v9, v7, v8, v2}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object v9

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_a
        0x26 -> :sswitch_9
        0x2a -> :sswitch_8
        0x2b -> :sswitch_7
        0x2d -> :sswitch_6
        0x2f -> :sswitch_5
        0x5e -> :sswitch_4
        0x7c -> :sswitch_3
        0x16c -> :sswitch_2
        0x16e -> :sswitch_1
        0x172 -> :sswitch_0
    .end sparse-switch
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
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atIntConst(Ljavassist/compiler/ast/IntConst;)V

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

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/IntConst;->compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/IntConst;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    instance-of v0, p2, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_1

    .line 53
    move-object v0, p2

    check-cast v0, Ljavassist/compiler/ast/DoubleConst;

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/IntConst;->compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public get()J
    .locals 2

    .line 33
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 39
    iget v0, p0, Ljavassist/compiler/ast/IntConst;->type:I

    return v0
.end method

.method public set(J)V
    .locals 0
    .param p1, "v"    # J

    .line 35
    iput-wide p1, p0, Ljavassist/compiler/ast/IntConst;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
