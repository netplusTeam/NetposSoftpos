.class final Lbsh/org/objectweb/asm/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field doubleVal:D

.field floatVal:F

.field hashCode:I

.field index:S

.field intVal:I

.field longVal:J

.field next:Lbsh/org/objectweb/asm/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method constructor <init>(SLbsh/org/objectweb/asm/Item;)V
    .locals 2
    .param p1, "index"    # S
    .param p2, "i"    # Lbsh/org/objectweb/asm/Item;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-short p1, p0, Lbsh/org/objectweb/asm/Item;->index:S

    .line 133
    iget v0, p2, Lbsh/org/objectweb/asm/Item;->type:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    .line 134
    iget v0, p2, Lbsh/org/objectweb/asm/Item;->intVal:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    .line 135
    iget-wide v0, p2, Lbsh/org/objectweb/asm/Item;->longVal:J

    iput-wide v0, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    .line 136
    iget v0, p2, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    .line 137
    iget-wide v0, p2, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iput-wide v0, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    .line 138
    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    .line 139
    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    .line 140
    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    .line 141
    iget v0, p2, Lbsh/org/objectweb/asm/Item;->hashCode:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 142
    return-void
.end method


# virtual methods
.method isEqualTo(Lbsh/org/objectweb/asm/Item;)Z
    .locals 7
    .param p1, "i"    # Lbsh/org/objectweb/asm/Item;

    .line 238
    iget v0, p1, Lbsh/org/objectweb/asm/Item;->type:I

    iget v1, p0, Lbsh/org/objectweb/asm/Item;->type:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 239
    const/4 v0, 0x1

    packed-switch v1, :pswitch_data_0

    .line 259
    :pswitch_0
    iget-object v1, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    .line 261
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v0

    goto :goto_1

    .line 253
    :pswitch_1
    iget-object v1, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v2

    .line 247
    :pswitch_2
    iget-wide v3, p1, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iget-wide v5, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    move v2, v0

    :cond_1
    return v2

    .line 243
    :pswitch_3
    iget-wide v3, p1, Lbsh/org/objectweb/asm/Item;->longVal:J

    iget-wide v5, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    move v2, v0

    :cond_2
    return v2

    .line 245
    :pswitch_4
    iget v1, p1, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iget v3, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    move v2, v0

    :cond_3
    return v2

    .line 241
    :pswitch_5
    iget v1, p1, Lbsh/org/objectweb/asm/Item;->intVal:I

    iget v3, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    if-ne v1, v3, :cond_4

    move v2, v0

    :cond_4
    return v2

    .line 251
    :pswitch_6
    iget-object v0, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 261
    :cond_5
    nop

    :goto_1
    return v2

    .line 264
    :cond_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method set(D)V
    .locals 2
    .param p1, "doubleVal"    # D

    .line 187
    const/4 v0, 0x6

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    .line 188
    iput-wide p1, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    .line 189
    double-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 190
    return-void
.end method

.method set(F)V
    .locals 2
    .param p1, "floatVal"    # F

    .line 175
    const/4 v0, 0x4

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    .line 176
    iput p1, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    .line 177
    float-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 178
    return-void
.end method

.method set(I)V
    .locals 1
    .param p1, "intVal"    # I

    .line 151
    const/4 v0, 0x3

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    .line 152
    iput p1, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    .line 153
    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 154
    return-void
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "strVal1"    # Ljava/lang/String;
    .param p3, "strVal2"    # Ljava/lang/String;
    .param p4, "strVal3"    # Ljava/lang/String;

    .line 207
    iput p1, p0, Lbsh/org/objectweb/asm/Item;->type:I

    .line 208
    iput-object p2, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    .line 210
    iput-object p4, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    .line 211
    sparse-switch p1, :sswitch_data_0

    .line 224
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 225
    return-void

    .line 218
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 219
    return-void

    .line 215
    :sswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 216
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method set(J)V
    .locals 2
    .param p1, "longVal"    # J

    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    .line 164
    iput-wide p1, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    .line 165
    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 166
    return-void
.end method
