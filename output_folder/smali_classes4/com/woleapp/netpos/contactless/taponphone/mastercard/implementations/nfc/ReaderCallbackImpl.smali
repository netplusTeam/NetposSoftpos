.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;
.super Ljava/lang/Object;
.source "ReaderCallbackImpl.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field private mNfcVerveListenerImpl:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;

.field private final mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;)V
    .locals 0
    .param p1, "tagEventListener"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tagEventListener"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;)V
    .locals 0
    .param p1, "tagEventListener"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;
    .param p2, "nfcListenerImpl"    # Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "tagEventListener",
            "nfcListenerImpl"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    .line 21
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;->mNfcVerveListenerImpl:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;

    .line 22
    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 2
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->setIsoDep(Landroid/nfc/tech/IsoDep;)V

    .line 28
    return-void
.end method
