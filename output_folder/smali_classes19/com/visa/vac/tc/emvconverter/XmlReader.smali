.class public Lcom/visa/vac/tc/emvconverter/XmlReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getInstance:I


# direct methods
.method private static $$a(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    nop

    .line 96
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 97
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 99
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 121
    const/16 v3, 0x30

    goto :goto_1

    :cond_1
    const/16 v3, 0x22

    :goto_1
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 101
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    goto :goto_2

    .line 119
    :pswitch_0
    aput-object v2, v1, v4

    .line 121
    return-object v1

    .line 104
    :goto_2
    const-string v3, ""

    const-string v6, "Name"

    invoke-interface {p0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    const-string v7, "KernelContact"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, ":"

    const-string v9, "SvID"

    const/4 v10, 0x4

    if-eqz v7, :cond_4

    .line 106
    invoke-interface {p0, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    nop

    .line 3308
    nop

    .line 3309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 121
    sget v3, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v3, v3, 0x4f

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v3, v5

    if-nez v3, :cond_2

    .line 3310
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 3311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 3313
    :cond_3
    nop

    .line 107
    nop

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v7, "KernelContactless"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 121
    const/16 v7, 0x29

    goto :goto_3

    :cond_5
    const/16 v7, 0x14

    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 114
    nop

    .line 5308
    nop

    .line 5309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-ne v4, v10, :cond_8

    goto :goto_5

    .line 110
    :pswitch_1
    invoke-interface {p0, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    nop

    .line 4308
    nop

    .line 4309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v10, :cond_7

    .line 4310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 4311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 121
    sget v9, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v9, v9, 0x2b

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v9, v5

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    move v4, v0

    :goto_4
    packed-switch v4, :pswitch_data_2

    .line 4313
    :cond_7
    :pswitch_2
    nop

    .line 111
    nop

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5310
    :goto_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 5311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 121
    nop

    .line 5313
    :cond_8
    nop

    .line 114
    nop

    .line 116
    invoke-virtual {v2, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BuildConfig(Lorg/xmlpull/v1/XmlPullParser;)Lcom/visa/vac/tc/emvconverter/ActionEngine;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    nop

    .line 170
    new-instance v0, Lcom/visa/vac/tc/emvconverter/ActionEngine;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/ActionEngine;-><init>()V

    .line 200
    :goto_0
    nop

    .line 171
    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    .line 7311
    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-nez v1, :cond_1

    .line 172
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 7311
    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_2

    .line 175
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/16 v6, 0x2d

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x4

    sparse-switch v5, :sswitch_data_0

    :cond_3
    goto/16 :goto_5

    :sswitch_0
    const-string v2, "EventList"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7311
    move v1, v8

    goto :goto_2

    :cond_4
    move v1, v7

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 175
    const/4 v2, 0x5

    goto/16 :goto_6

    :sswitch_1
    const-string v2, "ScriptAlias"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_5

    .line 7311
    move v1, v8

    goto :goto_3

    :cond_5
    const/16 v1, 0x56

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 200
    move v2, v9

    goto :goto_6

    .line 175
    :pswitch_0
    move v2, v9

    goto :goto_6

    :sswitch_2
    const-string v2, "ActionType"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/2addr v1, v6

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_6

    .line 175
    :cond_6
    move v2, v3

    goto :goto_6

    :sswitch_3
    const-string v5, "NotYetAvailable"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_6

    :sswitch_4
    const-string v2, "ActionAlias"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7311
    const/16 v1, 0x42

    goto :goto_4

    :cond_7
    const/16 v1, 0x3a

    :goto_4
    packed-switch v1, :pswitch_data_2

    :pswitch_1
    goto :goto_5

    :pswitch_2
    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 175
    :cond_8
    move v2, v8

    goto :goto_6

    :sswitch_5
    const-string v2, "ActionID"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v7

    goto :goto_6

    :goto_5
    move v2, v4

    :goto_6
    const-string v1, ""

    packed-switch v2, :pswitch_data_3

    .line 195
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/XmlReader;->getTerminalData(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 192
    :pswitch_3
    nop

    .line 11308
    nop

    .line 11309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_9

    .line 11310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 11311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 11313
    :cond_9
    nop

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visa/vac/tc/emvconverter/ActionEngine;->setTerminalData(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 189
    :pswitch_4
    nop

    .line 10308
    nop

    .line 10309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_a

    .line 10310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 10311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 10313
    :cond_a
    nop

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visa/vac/tc/emvconverter/ActionEngine;->ContactlessConfiguration(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 186
    :pswitch_5
    nop

    .line 9308
    nop

    .line 9309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_b

    .line 7311
    goto :goto_7

    :cond_b
    move v7, v8

    :goto_7
    packed-switch v7, :pswitch_data_4

    goto :goto_8

    .line 9310
    :pswitch_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 9311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 9313
    :goto_8
    nop

    .line 186
    invoke-virtual {v0, v1}, Lcom/visa/vac/tc/emvconverter/ActionEngine;->getTerminalData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :pswitch_7
    nop

    .line 8308
    nop

    .line 8309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_c

    .line 7311
    const/16 v2, 0x30

    goto :goto_9

    :cond_c
    const/16 v2, 0x4c

    :goto_9
    packed-switch v2, :pswitch_data_5

    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v1, v3

    if-eqz v1, :cond_d

    .line 8310
    :cond_d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 8311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 8313
    :pswitch_8
    nop

    .line 183
    invoke-virtual {v0, v1}, Lcom/visa/vac/tc/emvconverter/ActionEngine;->BuildConfig(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :pswitch_9
    nop

    .line 7308
    nop

    .line 7309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_e

    .line 7311
    const/16 v2, 0x18

    goto :goto_a

    :cond_e
    const/16 v2, 0x3e

    :goto_a
    packed-switch v2, :pswitch_data_6

    .line 200
    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/2addr v1, v6

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_f

    .line 7310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 7311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 7313
    :pswitch_a
    nop

    .line 180
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visa/vac/tc/emvconverter/ActionEngine;->$$a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7310
    :cond_f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 7311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :catchall_0
    move-exception p0

    throw p0

    .line 177
    :pswitch_b
    nop

    .line 6308
    nop

    .line 6309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_10

    .line 7311
    move v6, v9

    goto :goto_b

    :cond_10
    nop

    :goto_b
    packed-switch v6, :pswitch_data_7

    goto :goto_c

    .line 6310
    :pswitch_c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 6311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 6313
    :goto_c
    nop

    .line 177
    invoke-virtual {v0, v1}, Lcom/visa/vac/tc/emvconverter/ActionEngine;->getInstance(Ljava/lang/String;)V

    .line 200
    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v1, v3

    goto/16 :goto_0

    :cond_11
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5edcca0f -> :sswitch_5
        -0x3fdabe66 -> :sswitch_4
        -0x34a450ec -> :sswitch_3
        -0x1accad50 -> :sswitch_2
        0x4ed44425 -> :sswitch_1
        0x794dda38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4c
        :pswitch_8
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3e
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch
.end method

.method private static BuildConfig(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    sget v0, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v1, v0, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 35
    :cond_0
    nop

    .line 37
    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 56
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    .line 36
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    .line 56
    sget v3, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v3, v2

    if-eqz v3, :cond_3

    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 40
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 41
    const-string v5, "ScriptTable"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_e

    .line 37
    sget v5, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v5, v5, 0x71

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_4

    .line 41
    :cond_4
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 42
    nop

    .line 1207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    :cond_5
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 1243
    const/16 v3, 0x4b

    goto :goto_3

    :cond_6
    const/16 v3, 0x32

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 1242
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1243
    goto/16 :goto_9

    .line 1212
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1215
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1218
    const-string v5, "InterfaceID"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1243
    move v3, v6

    goto :goto_4

    :cond_7
    move v3, v7

    :goto_4
    packed-switch v3, :pswitch_data_1

    goto :goto_8

    .line 1219
    :pswitch_1
    const-string v3, ""

    const-string v5, "Name"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1220
    :cond_8
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_b

    .line 1221
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v2, :cond_8

    .line 1224
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SvID"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1225
    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1226
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 1227
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v4, :cond_a

    .line 1228
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    if-ne v11, v2, :cond_9

    .line 1243
    const/16 v11, 0xc

    goto :goto_7

    :cond_9
    const/16 v11, 0x60

    :goto_7
    packed-switch v11, :pswitch_data_2

    goto :goto_6

    .line 1232
    :pswitch_2
    invoke-static {p1, v8, v9}, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/visa/vac/tc/emvconverter/ApduScript;

    move-result-object v11

    .line 1233
    invoke-virtual {v11}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getScriptAlias()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1236
    :cond_a
    invoke-virtual {v1, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    :goto_8
    goto :goto_2

    .line 56
    :goto_9
    nop

    .line 1243
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v7, v5, :cond_d

    .line 46
    sget v5, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v5, v5, 0x79

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_c

    .line 1243
    move v5, v4

    goto :goto_a

    :cond_c
    const/16 v5, 0x18

    :goto_a
    packed-switch v5, :pswitch_data_3

    .line 1244
    invoke-virtual {v1, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v7

    .line 1243
    add-int/lit8 v7, v7, 0x8

    goto :goto_9

    .line 1244
    :pswitch_3
    invoke-virtual {v1, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v7

    .line 1243
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1246
    :cond_d
    nop

    .line 42
    move-object v1, v3

    goto/16 :goto_0

    .line 43
    :cond_e
    const-string v4, "ActionTable"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 37
    sget v4, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v4, v4, 0x31

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v4, v2

    if-nez v4, :cond_f

    .line 1243
    move v6, v7

    goto :goto_b

    :cond_f
    nop

    :goto_b
    packed-switch v6, :pswitch_data_4

    .line 37
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto :goto_c

    .line 43
    :pswitch_4
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 44
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/XmlReader;->ContactlessConfiguration(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 37
    :goto_c
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    .line 45
    :cond_10
    const-string v4, "DataMappingTable"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 37
    sget v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_11

    .line 1243
    const/16 v1, 0x1f

    goto :goto_d

    :cond_11
    const/16 v1, 0x1e

    :goto_d
    packed-switch v1, :pswitch_data_5

    .line 46
    invoke-static {p0, p1}, Lcom/visa/vac/tc/emvconverter/XmlReader;->ContactlessConfiguration(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0, p1}, Lcom/visa/vac/tc/emvconverter/XmlReader;->ContactlessConfiguration(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x31

    :try_start_1
    div-int/2addr v3, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 37
    :catchall_1
    move-exception p0

    throw p0

    .line 47
    :cond_12
    const-string v4, "LocalConfigParameters"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 46
    sget v4, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v4, v4, 0x7

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v4, v2

    if-eqz v4, :cond_13

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x3e

    :try_start_2
    div-int/2addr v5, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_14

    goto :goto_e

    :catchall_2
    move-exception p0

    throw p0

    .line 47
    :cond_13
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 48
    :goto_e
    invoke-static {p0, p1}, Lcom/visa/vac/tc/emvconverter/XmlReader;->ContactlessConfiguration(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 49
    :cond_14
    const-string v4, "ScriptDefaultParameters"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1243
    const/16 v4, 0x10

    goto :goto_f

    :cond_15
    const/16 v4, 0x30

    :goto_f
    packed-switch v4, :pswitch_data_6

    .line 37
    sget v4, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v4, v4, 0x6d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v4, v2

    if-nez v4, :cond_16

    .line 1243
    const/16 v4, 0x3a

    goto :goto_10

    :cond_16
    const/16 v4, 0x2a

    :goto_10
    packed-switch v4, :pswitch_data_7

    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_11

    .line 37
    :pswitch_6
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p0

    throw p0

    .line 50
    :goto_11
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/XmlReader;->$$a(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;

    move-result-object v1

    .line 56
    goto/16 :goto_0

    .line 52
    :cond_17
    :pswitch_7
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/XmlReader;->getTerminalData(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 56
    :cond_18
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x18
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1f
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x30
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3a
        :pswitch_6
    .end packed-switch
.end method

.method private static ContactlessConfiguration(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    nop

    .line 60
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 61
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 62
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 63
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 64
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v0, :cond_1

    .line 76
    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    const/4 v8, 0x2

    packed-switch v5, :pswitch_data_0

    .line 89
    aput-object v2, v1, v7

    .line 90
    aput-object v3, v1, v6

    .line 91
    aput-object v4, v1, v8

    .line 92
    return-object v1

    .line 2311
    :pswitch_1
    sget v5, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v5, v5, 0x79

    rem-int/lit16 v9, v5, 0x80

    sput v9, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v5, v8

    const/4 v9, 0x4

    if-nez v5, :cond_3

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 76
    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_3

    .line 65
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 68
    :goto_3
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_4
    goto :goto_5

    :sswitch_0
    const-string v10, "DataMappingTable"

    invoke-virtual {p0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 92
    move v5, v7

    goto :goto_5

    .line 68
    :sswitch_1
    const-string v10, "LocalConfigParameters"

    invoke-virtual {p0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 76
    move v10, v6

    goto :goto_4

    :cond_5
    move v10, v7

    :goto_4
    packed-switch v10, :pswitch_data_2

    goto :goto_5

    .line 68
    :pswitch_2
    nop

    .line 92
    move v5, v6

    .line 68
    :goto_5
    const-string v10, "Name"

    const-string v11, ""

    packed-switch v5, :pswitch_data_3

    .line 85
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/XmlReader;->getTerminalData(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_e

    .line 82
    :pswitch_3
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2308
    nop

    .line 2309
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 76
    const/16 v6, 0x55

    goto :goto_6

    :cond_6
    const/16 v6, 0x24

    :goto_6
    packed-switch v6, :pswitch_data_4

    goto :goto_7

    .line 92
    :pswitch_4
    sget v6, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v6, v6, 0x35

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v6, v8

    if-eqz v6, :cond_7

    .line 2310
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 2311
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/16 v6, 0x4c

    :try_start_0
    div-int/2addr v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 92
    :catchall_0
    move-exception p0

    throw p0

    .line 2310
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 2311
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 2313
    :goto_7
    nop

    .line 82
    invoke-virtual {v2, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :pswitch_5
    const-string v5, "DataType"

    invoke-interface {p1, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    const-string v12, "Source"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    if-eqz v5, :cond_8

    .line 76
    move v13, v6

    goto :goto_8

    :cond_8
    move v13, v7

    :goto_8
    packed-switch v13, :pswitch_data_5

    .line 92
    sget v13, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/2addr v13, v6

    rem-int/lit16 v6, v13, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v13, v8

    if-nez v13, :cond_9

    .line 73
    :cond_9
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 76
    const/16 v6, 0x62

    goto :goto_9

    :cond_a
    const/16 v6, 0x3e

    :goto_9
    packed-switch v6, :pswitch_data_6

    goto :goto_a

    .line 65
    :pswitch_6
    sget v6, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v6, v6, 0x17

    rem-int/lit16 v13, v6, 0x80

    sput v13, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v6, v8

    if-eqz v6, :cond_b

    .line 74
    :cond_b
    invoke-virtual {v4, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    nop

    .line 75
    :goto_a
    :pswitch_7
    const/16 v5, 0x23

    if-eqz v12, :cond_c

    .line 76
    move v6, v5

    goto :goto_b

    :cond_c
    const/16 v6, 0x46

    :goto_b
    packed-switch v6, :pswitch_data_7

    .line 75
    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 76
    goto :goto_c

    :cond_d
    move v5, v9

    :goto_c
    packed-switch v5, :pswitch_data_8

    .line 65
    sget v5, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v5, v5, 0x2d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v5, v8

    if-nez v5, :cond_e

    .line 76
    invoke-virtual {v3, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x19

    :try_start_1
    div-int/2addr v5, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_d

    .line 65
    :catchall_1
    move-exception p0

    throw p0

    .line 76
    :cond_e
    invoke-virtual {v3, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_d
    :pswitch_8
    nop

    .line 1308
    nop

    .line 1309
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v9, :cond_f

    .line 1310
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 1311
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 1313
    :cond_f
    nop

    .line 78
    nop

    .line 79
    invoke-virtual {v2, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 92
    :goto_e
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x10bb4bc9 -> :sswitch_1
        0x3308dc8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x55
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x62
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x46
        :pswitch_8
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method private static ContactlessConfiguration(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    nop

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const/4 v1, 0x0

    move-object v2, v1

    .line 132
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v3, v6, :cond_9

    .line 133
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 136
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 139
    const-string v8, "InterfaceID"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 140
    const-string v3, ""

    const-string v8, "Name"

    invoke-interface {p0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 141
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v6, :cond_2

    .line 154
    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v4

    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 160
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 154
    :pswitch_1
    sget v10, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 v10, v10, 0x67

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr v10, v7

    if-nez v10, :cond_3

    .line 142
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-ne v10, v7, :cond_4

    .line 154
    move v10, v5

    goto :goto_3

    :cond_4
    move v10, v4

    :goto_3
    packed-switch v10, :pswitch_data_1

    .line 145
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SvID"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 146
    invoke-interface {p0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v10, Lcom/visa/vac/tc/emvconverter/ActionTable;

    invoke-direct {v10, v9, v2}, Lcom/visa/vac/tc/emvconverter/ActionTable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    :cond_5
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v6, :cond_6

    .line 154
    const/16 v11, 0x5e

    goto :goto_5

    :cond_6
    const/16 v11, 0x36

    :goto_5
    packed-switch v11, :pswitch_data_2

    .line 156
    invoke-virtual {v10, v2}, Lcom/visa/vac/tc/emvconverter/ActionTable;->setMap(Landroid/util/ArrayMap;)V

    move-object v2, v10

    goto :goto_1

    .line 150
    :pswitch_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    if-ne v11, v7, :cond_5

    .line 166
    sget v11, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v11, v11, 0x67

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v11, v7

    if-nez v11, :cond_7

    .line 153
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig(Lorg/xmlpull/v1/XmlPullParser;)Lcom/visa/vac/tc/emvconverter/ActionEngine;

    move-result-object v11

    .line 154
    invoke-virtual {v11}, Lcom/visa/vac/tc/emvconverter/ActionEngine;->getTerminalData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    goto :goto_4

    .line 153
    :cond_7
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig(Lorg/xmlpull/v1/XmlPullParser;)Lcom/visa/vac/tc/emvconverter/ActionEngine;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/ActionEngine;->getTerminalData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :catchall_0
    move-exception p0

    throw p0

    :goto_6
    nop

    .line 160
    :cond_8
    goto/16 :goto_0

    .line 163
    :cond_9
    new-array p0, v5, [Ljava/lang/Object;

    .line 164
    aput-object v0, p0, v4

    .line 166
    nop

    .line 154
    sget v0, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr v0, v7

    if-nez v0, :cond_a

    .line 166
    return-object p0

    .line 154
    :cond_a
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5e
        :pswitch_2
    .end packed-switch
.end method

.method private static getInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/visa/vac/tc/emvconverter/ApduScript;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    nop

    .line 250
    new-instance v0, Lcom/visa/vac/tc/emvconverter/ApduScript;

    invoke-direct {v0, p1, p2}, Lcom/visa/vac/tc/emvconverter/ApduScript;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_12

    .line 252
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 13311
    sget p1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_1

    .line 255
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 256
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    sparse-switch v3, :sswitch_data_0

    :cond_2
    goto/16 :goto_3

    :sswitch_0
    const-string p2, "ScriptOwner"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13311
    sget p1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr p1, v1

    .line 256
    move p2, v1

    goto/16 :goto_4

    :sswitch_1
    const-string p2, "ScriptAlias"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 289
    sget p1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr p1, v1

    move p2, v5

    goto :goto_4

    .line 256
    :sswitch_2
    const-string p2, "Negative"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x5

    goto :goto_4

    :sswitch_3
    const-string p2, "Positive"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p2, v6

    goto :goto_4

    :sswitch_4
    const-string p2, "ScriptID"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 289
    sget p1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr p1, v1

    move p2, v4

    goto :goto_4

    .line 256
    :sswitch_5
    const-string v3, "Operation"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13311
    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v5

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 256
    :pswitch_0
    goto :goto_4

    :sswitch_6
    const-string p2, "Exception"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13311
    move p1, v4

    goto :goto_2

    :cond_4
    move p1, v5

    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 18311
    sget p1, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_5

    .line 256
    :cond_5
    const/4 p2, 0x6

    goto :goto_4

    :goto_3
    :pswitch_1
    move p2, v2

    :goto_4
    const/4 p1, 0x0

    const-string v2, ""

    packed-switch p2, :pswitch_data_2

    .line 284
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/XmlReader;->getTerminalData(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 281
    :pswitch_2
    nop

    .line 18308
    nop

    .line 18309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    if-ne p2, v6, :cond_6

    .line 13311
    const/16 p2, 0x3c

    goto :goto_5

    :cond_6
    const/16 p2, 0xa

    :goto_5
    packed-switch p2, :pswitch_data_3

    goto :goto_6

    .line 289
    :pswitch_3
    sget p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 p2, p2, 0x2d

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr p2, v1

    if-eqz p2, :cond_7

    .line 18310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 18311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_6

    .line 18310
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 18311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :catchall_0
    move-exception p0

    throw p0

    .line 18313
    :goto_6
    nop

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setException_action(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :pswitch_4
    nop

    .line 17308
    nop

    .line 17309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    if-ne p1, v6, :cond_8

    .line 13311
    const/16 p1, 0x1a

    goto :goto_7

    :cond_8
    const/16 p1, 0x9

    :goto_7
    packed-switch p1, :pswitch_data_4

    .line 17310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 17311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 289
    nop

    .line 17313
    :pswitch_5
    nop

    .line 278
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setNeg_action(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :pswitch_6
    nop

    .line 16308
    nop

    .line 16309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    if-ne p1, v6, :cond_9

    .line 16310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 16311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 16313
    :cond_9
    nop

    .line 275
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setPos_action(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :pswitch_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p1

    if-le p1, v5, :cond_a

    .line 13311
    goto :goto_8

    :cond_a
    const/16 v5, 0x55

    :goto_8
    const-string p1, "Name"

    packed-switch v5, :pswitch_data_5

    .line 270
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setOperation(Ljava/lang/String;)V

    goto :goto_9

    .line 268
    :pswitch_8
    nop

    .line 15293
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setOperation(Ljava/lang/String;)V

    .line 15294
    const-string p1, "CLA"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setCLA(Ljava/lang/String;)V

    .line 15295
    const-string p1, "INS"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setINS(Ljava/lang/String;)V

    .line 15296
    const-string p1, "P1"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setP1(Ljava/lang/String;)V

    .line 15297
    const-string p1, "P2"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setP2(Ljava/lang/String;)V

    .line 15298
    const-string p1, "DATA"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setDATA(Ljava/lang/String;)V

    .line 15299
    const-string p1, "LE"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setLE(Ljava/lang/String;)V

    .line 15300
    const-string p1, "SW"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setSW(Ljava/lang/String;)V

    .line 15301
    invoke-virtual {v0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setHasDependancy()V

    .line 15302
    const-string p1, "ScriptInput"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setScriptInput(Ljava/lang/String;)V

    .line 15303
    const-string p1, "ScriptOutput"

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setScriptOutput(Ljava/lang/String;)V

    .line 15304
    nop

    .line 268
    nop

    .line 272
    :goto_9
    nop

    .line 15309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    if-ne p1, v6, :cond_c

    .line 13311
    sget p1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_b

    .line 15310
    :cond_b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 15311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_c
    nop

    .line 289
    goto/16 :goto_0

    .line 264
    :pswitch_9
    nop

    .line 14309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    if-ne p1, v6, :cond_e

    .line 14310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 14311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 13311
    sget p1, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_d

    .line 289
    :cond_d
    nop

    .line 14311
    :cond_e
    goto/16 :goto_0

    .line 261
    :pswitch_a
    nop

    .line 13308
    nop

    .line 13309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    if-ne p2, v6, :cond_f

    .line 13311
    move p2, v4

    goto :goto_a

    :cond_f
    move p2, v5

    :goto_a
    packed-switch p2, :pswitch_data_6

    goto :goto_d

    .line 18311
    :pswitch_b
    sget p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 p2, p2, 0x29

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr p2, v1

    if-eqz p2, :cond_10

    .line 13311
    move v4, v5

    goto :goto_b

    :cond_10
    nop

    :goto_b
    packed-switch v4, :pswitch_data_7

    .line 13310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 13311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_c

    .line 13310
    :pswitch_c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 13311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_d

    :goto_c
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18311
    :catchall_1
    move-exception p0

    throw p0

    .line 13313
    :goto_d
    nop

    .line 261
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/emvconverter/ApduScript;->setScriptAlias(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :pswitch_d
    nop

    .line 12309
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    if-ne p1, v6, :cond_11

    .line 12310
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 12311
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_11
    goto/16 :goto_0

    .line 289
    :cond_12
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x303e0fd1 -> :sswitch_6
        -0x25730ab9 -> :sswitch_5
        -0x1470c8ba -> :sswitch_4
        0x306cfe19 -> :sswitch_3
        0x3ac17055 -> :sswitch_2
        0x4ed44425 -> :sswitch_1
        0x4f9ea088 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method private static getTerminalData(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    sget v0, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 316
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 319
    const/4 v0, 0x1

    move v2, v0

    .line 320
    :goto_0
    if-eqz v2, :cond_1

    .line 326
    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 321
    :pswitch_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 323
    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 326
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    :goto_2
    nop

    :goto_3
    goto :goto_0

    :goto_4
    sget p0, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    rem-int/2addr p0, v1

    return-void

    .line 317
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    nop

    .line 26
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 27
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 28
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 29
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 30
    invoke-static {p1, v0}, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/Object;

    move-result-object p1

    sget p2, Lcom/visa/vac/tc/emvconverter/XmlReader;->getInstance:I

    add-int/lit8 p2, p2, 0xd

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/XmlReader;->BuildConfig:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
