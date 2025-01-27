.class public final enum Lcom/alcineo/softpos/payment/model/SettingsSheet;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/payment/model/SettingsSheet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alcineo/softpos/payment/model/SettingsSheet;

.field public static final enum Application:Lcom/alcineo/softpos/payment/model/SettingsSheet;

.field public static final enum Drl:Lcom/alcineo/softpos/payment/model/SettingsSheet;

.field public static final enum Terminal:Lcom/alcineo/softpos/payment/model/SettingsSheet;


# instance fields
.field private final sheet:B


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/alcineo/softpos/payment/model/SettingsSheet;

    const-string v1, "Terminal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alcineo/softpos/payment/model/SettingsSheet;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/softpos/payment/model/SettingsSheet;->Terminal:Lcom/alcineo/softpos/payment/model/SettingsSheet;

    new-instance v1, Lcom/alcineo/softpos/payment/model/SettingsSheet;

    const-string v3, "Application"

    const/4 v4, 0x1

    const/16 v5, -0x80

    invoke-direct {v1, v3, v4, v5}, Lcom/alcineo/softpos/payment/model/SettingsSheet;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/softpos/payment/model/SettingsSheet;->Application:Lcom/alcineo/softpos/payment/model/SettingsSheet;

    new-instance v3, Lcom/alcineo/softpos/payment/model/SettingsSheet;

    const-string v5, "Drl"

    const/4 v6, 0x2

    const/16 v7, -0x7f

    invoke-direct {v3, v5, v6, v7}, Lcom/alcineo/softpos/payment/model/SettingsSheet;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/alcineo/softpos/payment/model/SettingsSheet;->Drl:Lcom/alcineo/softpos/payment/model/SettingsSheet;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alcineo/softpos/payment/model/SettingsSheet;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alcineo/softpos/payment/model/SettingsSheet;->$VALUES:[Lcom/alcineo/softpos/payment/model/SettingsSheet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/alcineo/softpos/payment/model/SettingsSheet;->sheet:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/payment/model/SettingsSheet;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/payment/model/SettingsSheet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/payment/model/SettingsSheet;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/payment/model/SettingsSheet;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/payment/model/SettingsSheet;->$VALUES:[Lcom/alcineo/softpos/payment/model/SettingsSheet;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/payment/model/SettingsSheet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/payment/model/SettingsSheet;

    return-object v0
.end method


# virtual methods
.method public getSheet()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/softpos/payment/model/SettingsSheet;->sheet:B

    return v0
.end method
