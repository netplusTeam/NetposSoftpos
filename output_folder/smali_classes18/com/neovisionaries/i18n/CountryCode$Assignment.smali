.class public final enum Lcom/neovisionaries/i18n/CountryCode$Assignment;
.super Ljava/lang/Enum;
.source "CountryCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/CountryCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Assignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neovisionaries/i18n/CountryCode$Assignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum EXCEPTIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum INDETERMINATELY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum NOT_USED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum OFFICIALLY_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum TRANSITIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

.field public static final enum USER_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 2209
    new-instance v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v1, "OFFICIALLY_ASSIGNED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2217
    new-instance v1, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v3, "USER_ASSIGNED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/neovisionaries/i18n/CountryCode$Assignment;->USER_ASSIGNED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2225
    new-instance v3, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v5, "EXCEPTIONALLY_RESERVED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/neovisionaries/i18n/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2233
    new-instance v5, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v7, "TRANSITIONALLY_RESERVED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/neovisionaries/i18n/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2241
    new-instance v7, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v9, "INDETERMINATELY_RESERVED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/neovisionaries/i18n/CountryCode$Assignment;->INDETERMINATELY_RESERVED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2250
    new-instance v9, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    const-string v11, "NOT_USED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/neovisionaries/i18n/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/neovisionaries/i18n/CountryCode$Assignment;->NOT_USED:Lcom/neovisionaries/i18n/CountryCode$Assignment;

    .line 2201
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/neovisionaries/i18n/CountryCode$Assignment;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/neovisionaries/i18n/CountryCode$Assignment;->$VALUES:[Lcom/neovisionaries/i18n/CountryCode$Assignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/i18n/CountryCode$Assignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2201
    const-class v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;

    return-object v0
.end method

.method public static values()[Lcom/neovisionaries/i18n/CountryCode$Assignment;
    .locals 1

    .line 2201
    sget-object v0, Lcom/neovisionaries/i18n/CountryCode$Assignment;->$VALUES:[Lcom/neovisionaries/i18n/CountryCode$Assignment;

    invoke-virtual {v0}, [Lcom/neovisionaries/i18n/CountryCode$Assignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/i18n/CountryCode$Assignment;

    return-object v0
.end method
