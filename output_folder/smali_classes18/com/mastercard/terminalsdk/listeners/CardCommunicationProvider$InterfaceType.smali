.class public final enum Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterfaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTACT:Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

.field public static final enum CONTACTLESS:Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

.field public static final enum KEYBOARD:Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

.field private static final synthetic e:[Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    const-string v1, "KEYBOARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;->KEYBOARD:Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    new-instance v1, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    const-string v3, "CONTACT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;->CONTACT:Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    new-instance v3, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    const-string v5, "CONTACTLESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;->CONTACTLESS:Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;->e:[Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;->e:[Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    return-object v0
.end method
