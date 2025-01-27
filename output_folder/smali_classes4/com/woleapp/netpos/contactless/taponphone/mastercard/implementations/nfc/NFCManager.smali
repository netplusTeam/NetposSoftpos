.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;
.super Ljava/lang/Object;
.source "NFCManager.java"


# static fields
.field public static final READER_FLAGS:I = 0x183


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field public mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "currentContext"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentContext"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->mActivity:Landroid/app/Activity;

    .line 21
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 22
    return-void
.end method


# virtual methods
.method public disableNFCReaderMode()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    .line 38
    :cond_0
    return-void
.end method

.method public enableNFCReaderMode(Landroid/nfc/NfcAdapter$ReaderCallback;)V
    .locals 4
    .param p1, "readerCallback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readerCallback"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x183

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 32
    :cond_0
    return-void
.end method

.method public isNFCEnabled()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
