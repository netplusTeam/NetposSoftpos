.class public Lcom/dspread/xpos/m0;
.super Ljava/lang/Object;
.source "TlvUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Lcom/dspread/xpos/a0;
    .locals 4

    add-int/lit8 v0, p1, 0x2

    .line 20
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 21
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    ushr-int/lit8 v3, v1, 0x7

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 25
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, 0x7f

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    .line 31
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, p1

    .line 35
    :goto_0
    new-instance p1, Lcom/dspread/xpos/a0;

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {p1, p0, v0}, Lcom/dspread/xpos/a0;-><init>(II)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/Tlv;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 5
    invoke-static {p0, v1}, Lcom/dspread/xpos/m0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_0

    return-object v0

    .line 10
    :cond_0
    invoke-static {p0, v1}, Lcom/dspread/xpos/m0;->a(Ljava/lang/String;I)Lcom/dspread/xpos/a0;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/dspread/xpos/a0;->b()I

    move-result v3

    .line 13
    invoke-virtual {v1}, Lcom/dspread/xpos/a0;->a()I

    move-result v1

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 15
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 19
    new-instance v5, Lcom/dspread/xpos/Tlv;

    invoke-direct {v5, v2, v3, v4}, Lcom/dspread/xpos/Tlv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 5

    .line 36
    const-string p0, "5F200E2F5A4952414B204D5553485441514F07A00000000310105F24032307319F160F4243544553542031323334353637389F21031826509A031406179F02060000000000019F03060000000000009F34030203009F120A566973612044656269749F0607A00000000310105F300202209F4E0F616263640000000000000000000000C408437452FFFFFF5295C00A00000332100300E00050C2820158A0CED1AF17F76D170B3D985706D6E5CC1058FF86EBE12A9160F20FB4D1EE924CC7433851CC1984914C4D92C56198DA80D9178C6E659157810A3FADA0A547CA2852F71C2C8FF061C2103133637360D2786C6DF42FD2D30F86B00A17EF4AD5654F68BA3990883A51901DC28C447CAF8D9C2275D0264778A9172A08443E0F125926091D0BE88D2B7198010C45704B62058A79F6680185107EBDCF6DE1FF52BE76751144DDEF6F4846F6F13384FCA0AAF1AB6DEE2FFC1C9B5D4874B792DC05276C628767DC25E8BE742050F431DC498FB5B8E2F320321D92DC993D2BCCC2A59DD46C0C797089D57BCBE7252E7094640C75BA955BA0D6CC077424BECC470B2D9B71BD18B704D1A169FF9E0D6B724D7F3A0B00070F8211FF38F226355043CAC634148CEC415AA5339ADB8AF2C95493DE8BFF0AF3A32B0844270C01945C094844ACD49330F749F9015954940949018FF8F66B90EF0CD4B392F38DA4"

    invoke-static {p0}, Lcom/dspread/xpos/m0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 38
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dspread/xpos/Tlv;

    .line 39
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dspread/xpos/Tlv;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dspread/xpos/Tlv;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    add-int/lit8 v0, p1, 0x2

    .line 17
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 18
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, p1, 0x4

    .line 20
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/dspread/xpos/Tlv;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 5
    invoke-static {p0, v1}, Lcom/dspread/xpos/m0;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 9
    invoke-static {p0, v1}, Lcom/dspread/xpos/m0;->a(Ljava/lang/String;I)Lcom/dspread/xpos/a0;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/dspread/xpos/a0;->b()I

    move-result v3

    .line 12
    invoke-virtual {v1}, Lcom/dspread/xpos/a0;->a()I

    move-result v1

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 13
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 16
    new-instance v5, Lcom/dspread/xpos/Tlv;

    invoke-direct {v5, v2, v3, v4}, Lcom/dspread/xpos/Tlv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
