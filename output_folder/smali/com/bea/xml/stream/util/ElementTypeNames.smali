.class public Lcom/bea/xml/stream/util/ElementTypeNames;
.super Ljava/lang/Object;
.source "ElementTypeNames.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventType(Ljava/lang/String;)I
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 54
    const-string v0, "START_ELEMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    const-string v0, "SPACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x6

    return v0

    .line 58
    :cond_1
    const-string v0, "END_ELEMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x2

    return v0

    .line 60
    :cond_2
    const-string v0, "PROCESSING_INSTRUCTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const/4 v0, 0x3

    return v0

    .line 62
    :cond_3
    const-string v0, "CHARACTERS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    const/4 v0, 0x4

    return v0

    .line 64
    :cond_4
    const-string v0, "COMMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    const/4 v0, 0x5

    return v0

    .line 66
    :cond_5
    const-string v0, "START_DOCUMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    const/4 v0, 0x7

    return v0

    .line 68
    :cond_6
    const-string v0, "END_DOCUMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    const/16 v0, 0x8

    return v0

    .line 70
    :cond_7
    const-string v0, "ATTRIBUTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    const/16 v0, 0xa

    return v0

    .line 72
    :cond_8
    const-string v0, "DTD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 73
    const/16 v0, 0xb

    return v0

    .line 74
    :cond_9
    const-string v0, "CDATA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    const/16 v0, 0xc

    return v0

    .line 76
    :cond_a
    const-string v0, "NAMESPACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 77
    const/16 v0, 0xd

    return v0

    .line 78
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static final getEventTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # I

    .line 22
    packed-switch p0, :pswitch_data_0

    .line 50
    const-string v0, "UNKNOWN_EVENT_TYPE"

    return-object v0

    .line 48
    :pswitch_0
    const-string v0, "NAMESPACE"

    return-object v0

    .line 46
    :pswitch_1
    const-string v0, "CDATA"

    return-object v0

    .line 44
    :pswitch_2
    const-string v0, "DTD"

    return-object v0

    .line 42
    :pswitch_3
    const-string v0, "ATTRIBUTE"

    return-object v0

    .line 40
    :pswitch_4
    const-string v0, "ENTITY_REFERENCE"

    return-object v0

    .line 38
    :pswitch_5
    const-string v0, "END_DOCUMENT"

    return-object v0

    .line 36
    :pswitch_6
    const-string v0, "START_DOCUMENT"

    return-object v0

    .line 32
    :pswitch_7
    const-string v0, "SPACE"

    return-object v0

    .line 34
    :pswitch_8
    const-string v0, "COMMENT"

    return-object v0

    .line 30
    :pswitch_9
    const-string v0, "CHARACTERS"

    return-object v0

    .line 28
    :pswitch_a
    const-string v0, "PROCESSING_INSTRUCTION"

    return-object v0

    .line 26
    :pswitch_b
    const-string v0, "END_ELEMENT"

    return-object v0

    .line 24
    :pswitch_c
    const-string v0, "START_ELEMENT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
