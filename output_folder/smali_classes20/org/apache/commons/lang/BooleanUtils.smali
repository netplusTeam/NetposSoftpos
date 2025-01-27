.class public Lorg/apache/commons/lang/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static isFalse(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 127
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotFalse(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 148
    invoke-static {p0}, Lorg/apache/commons/lang/BooleanUtils;->isFalse(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotTrue(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 109
    invoke-static {p0}, Lorg/apache/commons/lang/BooleanUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static toBoolean(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 227
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static toBoolean(III)Z
    .locals 2
    .param p0, "value"    # I
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I

    .line 288
    if-ne p0, p1, :cond_0

    .line 289
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_0
    if-ne p0, p2, :cond_1

    .line 291
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 184
    if-nez p0, :cond_0

    .line 185
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static toBoolean(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;

    .line 317
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 318
    if-nez p1, :cond_0

    .line 319
    return v1

    .line 320
    :cond_0
    if-nez p2, :cond_3

    .line 321
    return v0

    .line 323
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    return v1

    .line 325
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    return v0

    .line 329
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 729
    invoke-static {p0}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/BooleanUtils;->toBoolean(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;

    .line 751
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 752
    if-nez p1, :cond_0

    .line 753
    return v1

    .line 754
    :cond_0
    if-nez p2, :cond_3

    .line 755
    return v0

    .line 757
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 758
    return v1

    .line 759
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 760
    return v0

    .line 763
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanDefaultIfNull(Ljava/lang/Boolean;Z)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "valueIfNull"    # Z

    .line 204
    if-nez p0, :cond_0

    .line 205
    return p1

    .line 207
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static toBooleanObject(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "value"    # I

    .line 245
    if-nez p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static toBooleanObject(IIII)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # I
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I
    .param p3, "nullValue"    # I

    .line 349
    if-ne p0, p1, :cond_0

    .line 350
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 351
    :cond_0
    if-ne p0, p2, :cond_1

    .line 352
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 353
    :cond_1
    if-ne p0, p3, :cond_2

    .line 354
    const/4 v0, 0x0

    return-object v0

    .line 357
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "value"    # Ljava/lang/Integer;

    .line 265
    if-nez p0, :cond_0

    .line 266
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;
    .param p3, "nullValue"    # Ljava/lang/Integer;

    .line 380
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 381
    if-nez p1, :cond_0

    .line 382
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 383
    :cond_0
    if-nez p2, :cond_1

    .line 384
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 385
    :cond_1
    if-nez p3, :cond_5

    .line 386
    return-object v0

    .line 388
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 390
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 391
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 392
    :cond_4
    invoke-virtual {p0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 393
    return-object v0

    .line 396
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 16
    .param p0, "str"    # Ljava/lang/String;

    .line 570
    move-object/from16 v0, p0

    const-string/jumbo v1, "true"

    if-ne v0, v1, :cond_0

    .line 571
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 573
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 574
    return-object v1

    .line 576
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x53

    const/16 v4, 0x73

    const/16 v5, 0x54

    const/16 v6, 0x59

    const/16 v7, 0x74

    const/4 v8, 0x3

    const/16 v9, 0x79

    const/16 v10, 0x45

    const/16 v12, 0x65

    const/4 v15, 0x2

    const/16 v11, 0x46

    const/16 v14, 0x66

    const/4 v13, 0x1

    const/4 v1, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 639
    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 640
    .local v1, "ch0":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 641
    .local v2, "ch1":C
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 642
    .local v5, "ch2":C
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 643
    .local v6, "ch3":C
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 644
    .local v7, "ch4":C
    if-eq v1, v14, :cond_2

    if-ne v1, v11, :cond_1b

    :cond_2
    const/16 v8, 0x61

    if-eq v2, v8, :cond_3

    const/16 v8, 0x41

    if-ne v2, v8, :cond_1b

    :cond_3
    const/16 v8, 0x6c

    if-eq v5, v8, :cond_4

    const/16 v8, 0x4c

    if-ne v5, v8, :cond_1b

    :cond_4
    if-eq v6, v4, :cond_5

    if-ne v6, v3, :cond_1b

    :cond_5
    if-eq v7, v12, :cond_6

    if-ne v7, v10, :cond_1b

    .line 650
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    .line 625
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    .end local v5    # "ch2":C
    .end local v6    # "ch3":C
    .end local v7    # "ch4":C
    :pswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 626
    .restart local v1    # "ch0":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 627
    .restart local v2    # "ch1":C
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 628
    .local v3, "ch2":C
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 629
    .local v4, "ch3":C
    if-eq v1, v7, :cond_7

    if-ne v1, v5, :cond_1b

    :cond_7
    const/16 v5, 0x72

    if-eq v2, v5, :cond_8

    const/16 v5, 0x52

    if-ne v2, v5, :cond_1b

    :cond_8
    const/16 v5, 0x75

    if-eq v3, v5, :cond_9

    const/16 v5, 0x55

    if-ne v3, v5, :cond_1b

    :cond_9
    if-eq v4, v12, :cond_a

    if-ne v4, v10, :cond_1b

    .line 634
    :cond_a
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v5

    .line 607
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    .end local v4    # "ch3":C
    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 608
    .restart local v1    # "ch0":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 609
    .restart local v2    # "ch1":C
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 610
    .restart local v5    # "ch2":C
    if-eq v1, v9, :cond_b

    if-ne v1, v6, :cond_d

    :cond_b
    if-eq v2, v12, :cond_c

    if-ne v2, v10, :cond_d

    :cond_c
    if-eq v5, v4, :cond_11

    if-ne v5, v3, :cond_d

    goto :goto_0

    .line 616
    :cond_d
    const/16 v3, 0x6f

    if-eq v1, v3, :cond_e

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_1b

    :cond_e
    if-eq v2, v14, :cond_f

    if-ne v2, v11, :cond_1b

    :cond_f
    if-eq v5, v14, :cond_10

    if-ne v5, v11, :cond_1b

    .line 620
    :cond_10
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    .line 614
    :cond_11
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3

    .line 592
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    .end local v5    # "ch2":C
    :pswitch_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 593
    .restart local v1    # "ch0":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 594
    .restart local v2    # "ch1":C
    const/16 v3, 0x6f

    if-eq v1, v3, :cond_13

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_12

    goto :goto_1

    :cond_12
    const/16 v3, 0x6e

    const/16 v4, 0x4e

    goto :goto_2

    :cond_13
    :goto_1
    const/16 v3, 0x6e

    if-eq v2, v3, :cond_17

    const/16 v4, 0x4e

    if-ne v2, v4, :cond_14

    goto :goto_3

    .line 599
    :cond_14
    :goto_2
    if-eq v1, v3, :cond_15

    if-ne v1, v4, :cond_1b

    :cond_15
    const/16 v3, 0x6f

    if-eq v2, v3, :cond_16

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1b

    .line 602
    :cond_16
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    .line 597
    :cond_17
    :goto_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3

    .line 578
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    :pswitch_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 579
    .restart local v1    # "ch0":C
    if-eq v1, v9, :cond_1a

    if-eq v1, v6, :cond_1a

    if-eq v1, v7, :cond_1a

    if-ne v1, v5, :cond_18

    goto :goto_4

    .line 584
    :cond_18
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_19

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_19

    if-eq v1, v14, :cond_19

    if-ne v1, v11, :cond_1b

    .line 587
    :cond_19
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v2

    .line 582
    :cond_1a
    :goto_4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 656
    .end local v1    # "ch0":C
    :cond_1b
    :goto_5
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toBooleanObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;
    .param p3, "nullString"    # Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 683
    if-nez p1, :cond_0

    .line 684
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 685
    :cond_0
    if-nez p2, :cond_1

    .line 686
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 687
    :cond_1
    if-nez p3, :cond_5

    .line 688
    return-object v0

    .line 690
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 691
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 692
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 693
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 694
    :cond_4
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 695
    return-object v0

    .line 698
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "bool"    # Z

    .line 166
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static toInteger(Ljava/lang/Boolean;III)I
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I
    .param p3, "nullValue"    # I

    .line 487
    if-nez p0, :cond_0

    .line 488
    return p3

    .line 490
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    return v0
.end method

.method public static toInteger(Z)I
    .locals 0
    .param p0, "bool"    # Z

    .line 414
    return p0
.end method

.method public static toInteger(ZII)I
    .locals 1
    .param p0, "bool"    # Z
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I

    .line 468
    if-eqz p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 448
    if-nez p0, :cond_0

    .line 449
    const/4 v0, 0x0

    return-object v0

    .line 451
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;
    .param p3, "nullValue"    # Ljava/lang/Integer;

    .line 531
    if-nez p0, :cond_0

    .line 532
    return-object p3

    .line 534
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static toIntegerObject(Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "bool"    # Z

    .line 430
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method

.method public static toIntegerObject(ZLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p0, "bool"    # Z
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;

    .line 509
    if-eqz p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;
    .param p3, "nullString"    # Ljava/lang/String;

    .line 841
    if-nez p0, :cond_0

    .line 842
    return-object p3

    .line 844
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Z
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;

    .line 916
    if-eqz p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static toStringOnOff(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 801
    const-string v0, "on"

    const-string v1, "off"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .locals 2
    .param p0, "bool"    # Z

    .line 880
    const-string v0, "on"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 783
    const-string/jumbo v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .locals 2
    .param p0, "bool"    # Z

    .line 863
    const-string/jumbo v0, "true"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 819
    const-string/jumbo v0, "yes"

    const-string v1, "no"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .locals 2
    .param p0, "bool"    # Z

    .line 897
    const-string/jumbo v0, "yes"

    const-string v1, "no"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xor([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 977
    if-eqz p0, :cond_2

    .line 979
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 982
    const/4 v0, 0x0

    .line 984
    .local v0, "primitive":[Z
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 987
    nop

    .line 988
    invoke-static {v0}, Lorg/apache/commons/lang/BooleanUtils;->xor([Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v1

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array must not contain any null elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 980
    .end local v0    # "primitive":[Z
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static xor([Z)Z
    .locals 5
    .param p0, "array"    # [Z

    .line 937
    if-eqz p0, :cond_5

    .line 939
    array-length v0, p0

    if-eqz v0, :cond_4

    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, "trueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    .line 948
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_1

    .line 949
    if-ge v0, v4, :cond_0

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 952
    :cond_0
    return v3

    .line 945
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    .end local v1    # "i":I
    :cond_2
    if-ne v0, v4, :cond_3

    move v3, v4

    :cond_3
    return v3

    .line 940
    .end local v0    # "trueCount":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
