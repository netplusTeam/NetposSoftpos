.class public Lcom/visa/vac/tc/emvconverter/ContactlessCardData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static BuildConfig:I

.field private static ContactlessConfiguration:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static getTerminalData:Lcom/visa/vac/tc/emvconverter/ContactlessCardData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->$$a:I

    const/4 v1, 0x1

    sput v1, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->BuildConfig:I

    const/4 v1, 0x0

    sput-object v1, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->getTerminalData:Lcom/visa/vac/tc/emvconverter/ContactlessCardData;

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/visa/vac/tc/emvconverter/ContactlessCardData;
    .locals 3

    .line 17
    sget v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->$$a:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 11
    :cond_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->getTerminalData:Lcom/visa/vac/tc/emvconverter/ContactlessCardData;

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->getTerminalData:Lcom/visa/vac/tc/emvconverter/ContactlessCardData;

    .line 1021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1024
    sput-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60fe

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60fd

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60da

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, 0x5f24

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, 0x82

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, 0x5f34

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60ca

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x6084

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x6092

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60f0

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60c7

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60e6

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, 0x5f2a

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, 0x9c

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60c9

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x60dc

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, 0x57

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    const/16 v1, -0x609a

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->$$a:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x3e

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 15
    :cond_2
    :pswitch_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->getTerminalData:Lcom/visa/vac/tc/emvconverter/ContactlessCardData;

    invoke-virtual {v0}, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->Clear()V

    .line 17
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->getTerminalData:Lcom/visa/vac/tc/emvconverter/ContactlessCardData;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Clear()V
    .locals 3

    .line 67
    nop

    .line 66
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    sget v1, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->$$a:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->$$a:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :cond_2
    const/16 v0, 0x4f

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 v0, 0x47

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 71
    sget v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->$$a:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->ContactlessConfiguration:Ljava/util/HashMap;

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ContactlessCardData;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
