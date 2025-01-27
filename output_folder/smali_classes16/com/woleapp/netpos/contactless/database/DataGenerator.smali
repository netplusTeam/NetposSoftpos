.class public Lcom/woleapp/netpos/contactless/database/DataGenerator;
.super Ljava/lang/Object;
.source "DataGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static electricityBillersList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "billerList":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;>;"
    new-instance v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;

    const-string v2, "PHCN EKO"

    const-string v3, "PHCNEKO"

    const-string v4, "PHCNPPEKO"

    const-string v5, "https://3.bp.blogspot.com/-wQIFTaqFde8/W-2xq9tgDiI/AAAAAAAAAA0/wV3LuI1W2K0n63jystncE1IHaaTCj-8xQCK4BGAYYCw/s400/Eko%2BElectricity%2BDistribution%2BCompany.jpg"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;

    const-string v2, "PHCN KANO"

    const-string v3, "PHCNKAN"

    const-string v4, "PHCNPPKAN"

    const-string v5, "https://www.kedco.ng/assets/images/Kedco%20Logo%20web.png"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;

    const-string v2, "PHCN KADUNA"

    const-string v3, "PHCNKAD"

    const-string v4, "PHCNPPKAD"

    const-string v5, "https://gadopress.com/wp-content/uploads/2020/01/Kaedco.jpg"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;

    const-string v2, "PHCN JOS"

    const-string v3, "PHCNJOS"

    const-string v4, "PHCNPPJOS"

    const-string v5, "https://pbs.twimg.com/profile_images/898118928404295681/qqSdt2Ir_400x400.jpg"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;

    const-string v2, "PHCN Abuja"

    const-string v3, "PHCNABJ"

    const-string v4, "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTnKMMYPAMtpgqYFgPf0Xp6cOPmshafjnWj4Q&usqp=CAU"

    invoke-direct {v1, v2, v3, v3, v4}, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;

    const-string v2, "PHCN IBADAN"

    const-string v3, "PHCNIBD"

    const-string v4, "https://www.thedaily-ng.com/wp-content/uploads/2019/11/IBEDC.png"

    invoke-direct {v1, v2, v3, v3, v4}, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;

    const-string v2, "PHCN ENUGU"

    const-string v3, "PHCNENU"

    const-string v4, "PHCNPPENU"

    const-string v5, "https://pbs.twimg.com/profile_images/1162387741910454275/WF1aMEiU.jpg"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object v0
.end method

.method public static generateBillers()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "billerList":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/model/Biller;>;"
    new-instance v10, Lcom/woleapp/netpos/contactless/model/Biller;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Airtime"

    const-string v4, "MTN"

    const-string v5, "MTN"

    const-string v6, "VTU"

    const-string v7, "active"

    const-string v8, "Not Active"

    const-string v9, "https://seeklogo.com/images/M/MTN-logo-459AAF9482-seeklogo.com.png"

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v1, "biller":Lcom/woleapp/netpos/contactless/model/Biller;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Airtime"

    const-string v5, "GLO"

    const-string v6, "GLO"

    const-string v7, "VTU"

    const-string v8, "active"

    const-string v9, "Not Active"

    const-string v10, "https://upload.wikimedia.org/wikipedia/commons/8/86/Glo_button.png"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Airtime"

    const-string v5, "ETISALAT"

    const-string v6, "ETISALAT"

    const-string v7, "VTU"

    const-string v8, "active"

    const-string v9, "Not Active"

    const-string v10, "https://live.mrf.io/statics/i/ps/cdn.punchng.com/wp-content/uploads/2017/07/19170207/9Mobile-Telecom-Logo.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Airtime"

    const-string v5, "AIRTEL"

    const-string v6, "AIRTEL"

    const-string v7, "VTU"

    const-string v8, "active"

    const-string v9, "Not Active"

    const-string v10, "https://africa.airtel.com/assets/images/airtel-logo/airtel-logo-white-text-vertical.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Airtime Prepaid"

    const-string v5, "AIRTEL"

    const-string v6, "AIRTEL"

    const-string v7, "VTU"

    const-string v8, "active"

    const-string v9, "Not Active"

    const-string v10, "https://africa.airtel.com/assets/images/airtel-logo/airtel-logo-white-text-vertical.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Airtime Visafone"

    const-string v5, "VISAFONE"

    const-string v6, "VISAFONE"

    const-string v7, "VTU"

    const-string v8, "active"

    const-string v9, "Not Active"

    const-string v10, "https://i0.wp.com/mobilityarena.com/wp-content/uploads/2013/02/visafone-Logo.gif?fit=400%2C323&ssl=1"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN EKO"

    const-string v6, "PHCNEKO"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "active"

    const-string v10, "https://3.bp.blogspot.com/-wQIFTaqFde8/W-2xq9tgDiI/AAAAAAAAAA0/wV3LuI1W2K0n63jystncE1IHaaTCj-8xQCK4BGAYYCw/s400/Eko%2BElectricity%2BDistribution%2BCompany.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN IKEJA"

    const-string v6, "PHCNIKJ"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "active"

    const-string v10, "https://pbs.twimg.com/profile_images/661968066729738240/mKmGmNm0_400x400.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN KANO"

    const-string v6, "PHCNKAN"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "active"

    const-string v10, "https://www.kedco.ng/assets/images/Kedco%20Logo%20web.png"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN KADUNA"

    const-string v6, "PHCNKAD"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Pending"

    const-string v10, "https://gadopress.com/wp-content/uploads/2020/01/Kaedco.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN JOS"

    const-string v6, "PHCNJOS"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "active"

    const-string v10, "https://pbs.twimg.com/profile_images/898118928404295681/qqSdt2Ir_400x400.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN EKO"

    const-string v6, "PHCNPPEKO"

    const-string v7, "PayBill Postpaid"

    const-string v8, "pending"

    const-string v9, "Not Active"

    const-string v10, "https://3.bp.blogspot.com/-wQIFTaqFde8/W-2xq9tgDiI/AAAAAAAAAA0/wV3LuI1W2K0n63jystncE1IHaaTCj-8xQCK4BGAYYCw/s400/Eko%2BElectricity%2BDistribution%2BCompany.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN IKEJA"

    const-string v6, "PHCNPPIKJ"

    const-string v7, "PayBill Postpaid"

    const-string v8, "pending"

    const-string v9, "Not Active"

    const-string v10, "https://pbs.twimg.com/profile_images/661968066729738240/mKmGmNm0_400x400.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN KANO"

    const-string v6, "PHCNPPKAN"

    const-string v7, "PayBill Postpaid"

    const-string v8, "pending"

    const-string v9, "Not Active"

    const-string v10, "https://www.kedco.ng/assets/images/Kedco%20Logo%20web.png"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN KADUNA"

    const-string v6, "PHCNPPKAD"

    const-string v7, "PayBill Postpaid"

    const-string v8, "Pending"

    const-string v9, "Pending"

    const-string v10, "https://gadopress.com/wp-content/uploads/2020/01/Kaedco.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Electricity"

    const-string v5, "PHCN JOS"

    const-string v6, "PHCNPPJOS"

    const-string v7, "PayBill Postpaid"

    const-string v8, "pending"

    const-string v9, "Not Active"

    const-string v10, "https://pbs.twimg.com/profile_images/898118928404295681/qqSdt2Ir_400x400.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TV"

    const-string v5, "DSTV"

    const-string v6, "DSTV"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Pending"

    const-string v10, "https://i.pinimg.com/originals/b3/0a/86/b30a863d516e4acc035696d103b03cf3.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TV"

    const-string v5, "TRENDTV"

    const-string v6, "TRENDTV"

    const-string v7, "PayBill Prepaid"

    const-string v8, "pending"

    const-string v9, "Pending"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TV"

    const-string v5, "GOTV"

    const-string v6, "GOTV"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Pending"

    const-string v10, "https://dailyfamily.ng/wp-content/uploads/2017/09/GOtv-Logo.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TV"

    const-string v5, "COWA TV"

    const-string v6, "COWATV"

    const-string v7, "PayBill Prepaid"

    const-string v8, "Pending"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TV"

    const-string v5, "STARTIMES"

    const-string v6, "STARTIMES"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, "https://technext.ng/wp-content/uploads/2017/10/TSTv-Fever-Startimes-Introduces-PayPerDay-option-To-Stay-Ahead-of-Competition-1024x665-400x200.jpg"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Internet"

    const-string v5, "SWIFT"

    const-string v6, "SWIFT"

    const-string v7, "PayBill Postpaid"

    const-string v8, "Not Applicable"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Internet"

    const-string v5, "SMILE"

    const-string v6, "SMILE"

    const-string v7, "PayBill Postpaid"

    const-string v8, "Not Applicable"

    const-string v9, "Not Applicable"

    const-string v10, "https://i2.wp.com/bizwatchnigeria.ng/wp-content/uploads/2018/03/smile-nigeria.png?fit=680%2C365&ssl=1&resize=1280%2C720"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Internet"

    const-string v5, "SWIFT"

    const-string v6, "SWIFT"

    const-string v7, "PayBill Prepaid"

    const-string v8, "pending"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Internet"

    const-string v5, "SMILE"

    const-string v6, "SMILE"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, "https://i2.wp.com/bizwatchnigeria.ng/wp-content/uploads/2018/03/smile-nigeria.png?fit=680%2C365&ssl=1&resize=1280%2C720"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Internet"

    const-string v5, "SPECTRANET"

    const-string v6, "SPECTRANET"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Pending"

    const-string v10, "https://techafriqa.com/wp-content/uploads/2020/02/Spectranet-Data-Plans.png"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "Sam Amaga Ministries"

    const-string v6, "SAMAMAGA"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "Dunamis Worldwide"

    const-string v6, "Dunamis"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "Mountain of Fire and Miracles Ministries"

    const-string v6, "MFM"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "VICTORY CHAPEL"

    const-string v6, "VICTORYCHAPEL"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "Living Faith Church Worldwide International"

    const-string v6, "Winners"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "SALVATION MINISTRIES"

    const-string v6, "SAMIN"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "CHRIST EMBASSY"

    const-string v6, "CHRISTEMB"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "HIGH LIFE CHURCH"

    const-string v6, "HLC"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "HOUSE ON THE ROCK"

    const-string v6, "HOUSEONTHEROCK"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v11, Lcom/woleapp/netpos/contactless/model/Biller;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Church (donation)"

    const-string v5, "The Redeemed Evangelical Mission"

    const-string v6, "TREM"

    const-string v7, "PayBill Prepaid"

    const-string v8, "active"

    const-string v9, "Not Applicable"

    const-string v10, ""

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/woleapp/netpos/contactless/model/Biller;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method public static getBillerPlans(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 124
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getPlansJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "plans":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;

    return-object v1
.end method

.method public static getServiceProviderPlans(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;",
            ">;>;"
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getServiceProviderPlansJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "dataPlans":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;

    .line 144
    .local v1, "serviceProviderDataPlans":Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v2, "dataPlanList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;>;>;"
    iget-object v3, v1, Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;->mtnPlans:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v3, v1, Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;->gloPlans:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v3, v1, Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;->etisalatPlans:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v3, v1, Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;->airtelPlans:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v2
.end method

.method public static getSmileInternetPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getPlansJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "plans":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;

    .line 155
    .local v1, "billerPlans":Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;
    iget-object v2, v1, Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;->smileInternetList:Ljava/util/List;

    return-object v2
.end method

.method public static getSpectranetPlans(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getPlansJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "plans":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;

    .line 161
    .local v1, "billerPlans":Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;
    iget-object v2, v1, Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;->spectranetInternetList:Ljava/util/List;

    return-object v2
.end method
