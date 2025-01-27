.class public final enum Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/ThirdPartyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field public static final enum b:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field public static final enum c:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field public static final enum d:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field public static final enum e:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field private static final synthetic g:[Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field public static final enum h:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field public static final enum i:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field public static final enum j:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const-string v1, "CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->c:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const-string v3, "SMART_PHONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->e:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const-string v5, "KEY_FOB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->b:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const-string v7, "WATCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->d:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const-string v9, "MOBILE_TAG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->a:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    new-instance v9, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const-string v11, "WRIST_BAND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->j:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    new-instance v11, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const-string v13, "SLEEVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->h:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    new-instance v13, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->i:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->g:[Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->g:[Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0
.end method
