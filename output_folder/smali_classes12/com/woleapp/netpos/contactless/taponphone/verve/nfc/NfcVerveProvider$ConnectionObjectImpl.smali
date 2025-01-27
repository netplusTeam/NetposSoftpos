.class Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$ConnectionObjectImpl;
.super Ljava/lang/Object;
.source "NfcVerveProvider.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$ConnectionObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionObjectImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;


# direct methods
.method private constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$ConnectionObjectImpl;->this$0:Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;
    .param p2, "x1"    # Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$1;

    .line 256
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$ConnectionObjectImpl;-><init>(Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 264
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getInterfaceType()Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;
    .locals 1

    .line 259
    sget-object v0, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;->CONTACTLESS:Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;

    return-object v0
.end method
