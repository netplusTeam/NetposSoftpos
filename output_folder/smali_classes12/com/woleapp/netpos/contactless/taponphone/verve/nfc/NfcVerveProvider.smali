.class public Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;
.super Ljava/lang/Object;
.source "NfcVerveProvider.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$ConnectionObjectImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isCardTapped:Z

.field private mCommandExecutionTime:J

.field private mIsoDep:Landroid/nfc/tech/IsoDep;

.field public mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

.field private mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

.field private nFCEnabled:Z

.field private final verveNfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "currentContext"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentContext"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "NfcProvider"

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->TAG:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mCommandExecutionTime:J

    .line 40
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->verveNfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    .line 47
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    invoke-direct {v0, p1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    .line 48
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->isNFCEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->nFCEnabled:Z

    .line 49
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->disconnectReader()Z

    .line 50
    return-void
.end method

.method private connectToIsoDep()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    const-string v1, "NfcProvider"

    if-eqz v0, :cond_1

    .line 130
    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V

    .line 132
    const-string v0, "connectToIsoDep: Previous IsoDep connection closed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "connectToIsoDep: Failed to close previous IsoDep connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to close previous IsoDep connection"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_2

    .line 143
    :try_start_1
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->disconnectOtherTagTechnologies(Landroid/nfc/Tag;)V

    .line 144
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 145
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 146
    const-string v0, "connectToIsoDep: IsoDep connected successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    nop

    .line 151
    return-void

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "connectToIsoDep: Failed to connect IsoDep"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to connect IsoDep"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private disconnectOtherTagTechnologies(Landroid/nfc/Tag;)V
    .locals 12
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "techList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 212
    .local v4, "tech":Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 215
    .local v5, "techClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "get"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/nfc/Tag;

    aput-object v9, v8, v2

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 216
    .local v6, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 218
    .local v7, "techInstance":Ljava/lang/Object;
    const-string v8, "isConnected"

    new-array v9, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 219
    .local v8, "isConnectedMethod":Ljava/lang/reflect/Method;
    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 221
    .local v9, "isConnected":Z
    if-eqz v9, :cond_1

    .line 222
    const-string v10, "close"

    new-array v11, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 223
    .local v10, "closeMethod":Ljava/lang/reflect/Method;
    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v5    # "techClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v7    # "techInstance":Ljava/lang/Object;
    .end local v8    # "isConnectedMethod":Ljava/lang/reflect/Method;
    .end local v9    # "isConnected":Z
    .end local v10    # "closeMethod":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_1

    .line 225
    :catch_0
    move-exception v5

    .line 226
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disconnectOtherTagTechnologies: Failed to disconnect tech "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NfcProvider"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v4    # "tech":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_2
    return-void
.end method


# virtual methods
.method public connectReader()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    .line 177
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->verveNfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    check-cast v3, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;

    invoke-direct {v1, v2, v3}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;-><init>(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;)V

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->enableNFCReaderMode(Landroid/nfc/NfcAdapter$ReaderCallback;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 182
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public disableReaderMode()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->disableNFCReaderMode()V

    .line 206
    return-void
.end method

.method public disconnectReader()Z
    .locals 3

    .line 188
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    nop

    .line 197
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->disableNFCReaderMode()V

    .line 199
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    .line 200
    iput-boolean v1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z

    .line 201
    return v0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "npe":Ljava/lang/NullPointerException;
    return v0

    .line 191
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 244
    const-string v0, "Built-in NFC Controller"

    return-object v0
.end method

.method public getPreviousCommandExecutionTime()J
    .locals 4

    .line 249
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mCommandExecutionTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getVerveNfcListener()Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->verveNfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    return-object v0
.end method

.method public isCardPresent()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNfcEnabled()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->isNFCEnabled()Z

    move-result v0

    return v0
.end method

.method public isReaderConnected()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public removeCard()Z
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 158
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V

    .line 161
    :cond_0
    iput-boolean v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    return v2

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v0, "NfcProvider"

    const-string v2, "removeCard: IsoDep is null or disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v1
.end method

.method public sendReceive([B)[B
    .locals 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 61
    .local v1, "startTime":J
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v3, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v3

    .line 62
    .local v3, "response":[B
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 63
    .local v4, "endTime":J
    sub-long v6, v4, v1

    iput-wide v6, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mCommandExecutionTime:J
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "startTime":J
    .end local v4    # "endTime":J
    nop

    .line 73
    array-length v0, v3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 77
    return-object v3

    .line 74
    :cond_0
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->PROTOCOL_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v2, "Response Length less than 2 bytes"

    invoke-direct {v0, v2, v1}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0

    .line 57
    .end local v3    # "response":[B
    :cond_1
    :try_start_1
    new-instance v1, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    const-string v2, "IsoDep not connected"

    sget-object v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->TRANSMISSION_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    invoke-direct {v1, v2, v3}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    .end local p1    # "bytes":[B
    throw v1
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .restart local p1    # "bytes":[B
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z

    .line 70
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->TRANSMISSION_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    invoke-direct {v0, v2, v3}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "exception":Landroid/nfc/TagLostException;
    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z

    .line 67
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->TIMEOUT_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v3, "Tag Lost"

    invoke-direct {v0, v3, v2}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0
.end method

.method public waitForCard()Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$ConnectionObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation

    .line 82
    const-string v0, "is card Tapped "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$ConnectionObjectImpl;

    invoke-direct {v0, p0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$ConnectionObjectImpl;-><init>(Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$1;)V

    return-object v0

    .line 87
    :cond_0
    monitor-enter p0

    .line 88
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->getIsoDep()Landroid/nfc/tech/IsoDep;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "NfcProvider"

    const-string v3, "An Exception was encountered: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "NfcProvider"

    const-string v2, "connectCard: Card Tapped"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->connectToIsoDep()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->isCardTapped:Z

    .line 101
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$ConnectionObjectImpl;

    invoke-direct {v0, p0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$ConnectionObjectImpl;-><init>(Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider$1;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    return-object v0

    .line 102
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v2, "NfcProvider"

    const-string v3, "Connection failed, attempting to revalidate the tag: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :try_start_5
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    :cond_1
    goto :goto_3

    .line 109
    :catch_3
    move-exception v2

    .line 110
    .local v2, "ioException":Ljava/io/IOException;
    :try_start_6
    const-string v3, "NfcProvider"

    const-string v4, "Failed to close IsoDep: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v2    # "ioException":Ljava/io/IOException;
    :goto_3
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/nfc/NfcVerveProvider;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->invalidateTag()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 116
    :cond_2
    const-wide/16 v2, 0x64

    :try_start_7
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    :goto_4
    goto :goto_0

    .line 117
    :catch_4
    move-exception v0

    .line 118
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "ie":Ljava/lang/InterruptedException;
    goto :goto_4

    .line 122
    :cond_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 123
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    const-string v1, "Some Connection issue"

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->PROTOCOL_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0

    .line 122
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method
