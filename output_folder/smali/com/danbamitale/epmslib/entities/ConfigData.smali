.class public final Lcom/danbamitale/epmslib/entities/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danbamitale/epmslib/entities/ConfigData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 92\u00020\u0001:\u00019BU\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000bJ\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003JY\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u00c6\u0001J\t\u0010-\u001a\u00020\u001bH\u00d6\u0001J\u0013\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u000101H\u00d6\u0003J\t\u00102\u001a\u00020\u001bH\u00d6\u0001J\t\u00103\u001a\u00020\u0003H\u00d6\u0001J\u0019\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u001bH\u00d6\u0001R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\r\"\u0004\u0008\u0017\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000fR\u001e\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\r\"\u0004\u0008!\u0010\u000fR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\r\"\u0004\u0008#\u0010\u000f\u00a8\u0006:"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/ConfigData;",
        "Landroid/os/Parcelable;",
        "epmsDateTime",
        "",
        "cardAcceptorIdCode",
        "hostTimeOut",
        "currencyCode",
        "countryCode",
        "callHomeTime",
        "merchantNameLocation",
        "merchantCategoryCode",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCallHomeTime",
        "()Ljava/lang/String;",
        "setCallHomeTime",
        "(Ljava/lang/String;)V",
        "getCardAcceptorIdCode",
        "setCardAcceptorIdCode",
        "getCountryCode",
        "setCountryCode",
        "getCurrencyCode",
        "setCurrencyCode",
        "getEpmsDateTime",
        "setEpmsDateTime",
        "getHostTimeOut",
        "setHostTimeOut",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getMerchantCategoryCode",
        "setMerchantCategoryCode",
        "getMerchantNameLocation",
        "setMerchantNameLocation",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/danbamitale/epmslib/entities/ConfigData;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

.field private static final TAG_LEN_CALL_HOME_TIME:Ljava/lang/String;

.field private static final TAG_LEN_CARD_ACCEPTOR_ID_CODE:Ljava/lang/String;

.field private static final TAG_LEN_COUNTRY_CODE:Ljava/lang/String;

.field private static final TAG_LEN_CURRENCY_CODE:Ljava/lang/String;

.field private static final TAG_LEN_EPMS_DATE_TIME:Ljava/lang/String;

.field private static final TAG_LEN_MERCHANT_CATEGORY_CODE:Ljava/lang/String;

.field private static final TAG_LEN_MERCHANT_NAME_LOCATION:Ljava/lang/String;

.field private static final TAG_LEN_TIMEOUT:Ljava/lang/String;


# instance fields
.field private callHomeTime:Ljava/lang/String;

.field private cardAcceptorIdCode:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private epmsDateTime:Ljava/lang/String;

.field private hostTimeOut:Ljava/lang/String;

.field private id:I

.field private merchantCategoryCode:Ljava/lang/String;

.field private merchantNameLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/danbamitale/epmslib/entities/ConfigData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->Companion:Lcom/danbamitale/epmslib/entities/ConfigData$Companion;

    new-instance v0, Lcom/danbamitale/epmslib/entities/ConfigData$Creator;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/ConfigData$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    const-string v0, "02014"

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_EPMS_DATE_TIME:Ljava/lang/String;

    .line 29
    const-string v0, "03015"

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_CARD_ACCEPTOR_ID_CODE:Ljava/lang/String;

    .line 31
    const-string v0, "04002"

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_TIMEOUT:Ljava/lang/String;

    .line 33
    const-string v0, "05003"

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_CURRENCY_CODE:Ljava/lang/String;

    .line 35
    const-string v0, "06003"

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_COUNTRY_CODE:Ljava/lang/String;

    .line 37
    const-string v0, "07002"

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_CALL_HOME_TIME:Ljava/lang/String;

    .line 39
    const-string v0, "52040"

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_MERCHANT_NAME_LOCATION:Ljava/lang/String;

    .line 41
    const-string v0, "08004"

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_MERCHANT_CATEGORY_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/danbamitale/epmslib/entities/ConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "epmsDateTime"    # Ljava/lang/String;
    .param p2, "cardAcceptorIdCode"    # Ljava/lang/String;
    .param p3, "hostTimeOut"    # Ljava/lang/String;
    .param p4, "currencyCode"    # Ljava/lang/String;
    .param p5, "countryCode"    # Ljava/lang/String;
    .param p6, "callHomeTime"    # Ljava/lang/String;
    .param p7, "merchantNameLocation"    # Ljava/lang/String;
    .param p8, "merchantCategoryCode"    # Ljava/lang/String;

    const-string v0, "epmsDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardAcceptorIdCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostTimeOut"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHomeTime"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantNameLocation"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantCategoryCode"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    .line 18
    iput-object p7, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    .line 19
    iput-object p8, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->id:I

    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 11
    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 12
    move-object v1, v2

    goto :goto_0

    .line 11
    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 13
    move-object v3, v2

    goto :goto_1

    .line 11
    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 14
    move-object v4, v2

    goto :goto_2

    .line 11
    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 15
    move-object v5, v2

    goto :goto_3

    .line 11
    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 16
    move-object v6, v2

    goto :goto_4

    .line 11
    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 17
    move-object v7, v2

    goto :goto_5

    .line 11
    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 18
    move-object v8, v2

    goto :goto_6

    .line 11
    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 19
    goto :goto_7

    .line 11
    :cond_7
    move-object/from16 v2, p8

    :goto_7
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v2

    invoke-direct/range {p1 .. p9}, Lcom/danbamitale/epmslib/entities/ConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static final synthetic access$getTAG_LEN_CALL_HOME_TIME$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_CALL_HOME_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_LEN_CARD_ACCEPTOR_ID_CODE$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_CARD_ACCEPTOR_ID_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_LEN_COUNTRY_CODE$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_LEN_CURRENCY_CODE$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_CURRENCY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_LEN_EPMS_DATE_TIME$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_EPMS_DATE_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_LEN_MERCHANT_CATEGORY_CODE$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_MERCHANT_CATEGORY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_LEN_MERCHANT_NAME_LOCATION$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_MERCHANT_NAME_LOCATION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_LEN_TIMEOUT$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/danbamitale/epmslib/entities/ConfigData;->TAG_LEN_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/danbamitale/epmslib/entities/ConfigData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/danbamitale/epmslib/entities/ConfigData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/ConfigData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 16

    const-string v0, "epmsDateTime"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardAcceptorIdCode"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostTimeOut"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    move-object/from16 v13, p4

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    move-object/from16 v14, p5

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHomeTime"

    move-object/from16 v15, p6

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantNameLocation"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantCategoryCode"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/ConfigData;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/danbamitale/epmslib/entities/ConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/danbamitale/epmslib/entities/ConfigData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/entities/ConfigData;

    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    iget-object v1, v1, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCallHomeTime()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardAcceptorIdCode()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpmsDateTime()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getHostTimeOut()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->id:I

    return v0
.end method

.method public final getMerchantCategoryCode()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getMerchantNameLocation()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setCallHomeTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    return-void
.end method

.method public final setCardAcceptorIdCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    return-void
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public final setEpmsDateTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    return-void
.end method

.method public final setHostTimeOut(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 23
    iput p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->id:I

    return-void
.end method

.method public final setMerchantCategoryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    return-void
.end method

.method public final setMerchantNameLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigData(epmsDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardAcceptorIdCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callHomeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", merchantNameLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", merchantCategoryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->epmsDateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->cardAcceptorIdCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->hostTimeOut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->callHomeTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantNameLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConfigData;->merchantCategoryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
