.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;
.super Ljava/lang/Object;
.source "NfcProvider.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider$ConnectionObjectImpl;
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 17
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "NfcProvider"

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->TAG:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mCommandExecutionTime:J

    .line 35
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    invoke-direct {v0, p1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    .line 36
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->isNFCEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->nFCEnabled:Z

    .line 37
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->disconnectReader()Z

    .line 38
    return-void
.end method

.method private connectToIsoDep()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    const-string v1, "NfcProvider"

    if-eqz v0, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V

    .line 120
    const-string v0, "connectToIsoDep: Previous IsoDep connection closed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "connectToIsoDep: Failed to close previous IsoDep connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to close previous IsoDep connection"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_2

    .line 131
    :try_start_1
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->disconnectOtherTagTechnologies(Landroid/nfc/Tag;)V

    .line 132
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 133
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 134
    const-string v0, "connectToIsoDep: IsoDep connected successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    nop

    .line 139
    return-void

    .line 135
    :catch_1
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "connectToIsoDep: Failed to connect IsoDep"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to connect IsoDep"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
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

    .line 197
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "techList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 200
    .local v4, "tech":Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 203
    .local v5, "techClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "get"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/nfc/Tag;

    aput-object v9, v8, v2

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 204
    .local v6, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 206
    .local v7, "techInstance":Ljava/lang/Object;
    const-string v8, "isConnected"

    new-array v9, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 207
    .local v8, "isConnectedMethod":Ljava/lang/reflect/Method;
    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 209
    .local v9, "isConnected":Z
    if-eqz v9, :cond_1

    .line 210
    const-string v10, "close"

    new-array v11, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 211
    .local v10, "closeMethod":Ljava/lang/reflect/Method;
    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v5    # "techClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v7    # "techInstance":Ljava/lang/Object;
    .end local v8    # "isConnectedMethod":Ljava/lang/reflect/Method;
    .end local v9    # "isConnected":Z
    .end local v10    # "closeMethod":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_1

    .line 213
    :catch_0
    move-exception v5

    .line 214
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

    .line 198
    .end local v4    # "tech":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_2
    return-void
.end method


# virtual methods
.method public connectReader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    .line 165
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    if-eqz v1, :cond_0

    .line 166
    new-instance v2, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;

    invoke-direct {v2, v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/ReaderCallbackImpl;-><init>(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;)V

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->enableNFCReaderMode(Landroid/nfc/NfcAdapter$ReaderCallback;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public disableReaderMode()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->disableNFCReaderMode()V

    .line 194
    return-void
.end method

.method public disconnectReader()Z
    .locals 3

    .line 176
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    nop

    .line 185
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->disableNFCReaderMode()V

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    .line 188
    iput-boolean v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z

    .line 189
    return v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "npe":Ljava/lang/NullPointerException;
    return v0

    .line 179
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 232
    const-string v0, "Built-in NFC Controller"

    return-object v0
.end method

.method public getPreviousCommandExecutionTime()J
    .locals 4

    .line 237
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mCommandExecutionTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isCardPresent()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

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

    .line 241
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mNFCManager:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NFCManager;->isNFCEnabled()Z

    move-result v0

    return v0
.end method

.method public isReaderConnected()Z
    .locals 1

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public removeCard()Z
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 146
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V

    .line 149
    :cond_0
    iput-boolean v2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    return v2

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v0, "NfcProvider"

    const-string v2, "removeCard: IsoDep is null or disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
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

    .line 44
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 49
    .local v1, "startTime":J
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v3, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v3

    .line 50
    .local v3, "response":[B
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 51
    .local v4, "endTime":J
    sub-long v6, v4, v1

    iput-wide v6, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mCommandExecutionTime:J
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "startTime":J
    .end local v4    # "endTime":J
    nop

    .line 61
    array-length v0, v3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 65
    return-object v3

    .line 62
    :cond_0
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->PROTOCOL_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v2, "Response Length less than 2 bytes"

    invoke-direct {v0, v2, v1}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0

    .line 45
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

    .line 56
    .restart local p1    # "bytes":[B
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z

    .line 58
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->TRANSMISSION_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    invoke-direct {v0, v2, v3}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0

    .line 53
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 54
    .local v1, "exception":Landroid/nfc/TagLostException;
    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z

    .line 55
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

    .line 70
    const-string v0, "is card Tapped "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider$ConnectionObjectImpl;

    invoke-direct {v0, p0, v1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider$ConnectionObjectImpl;-><init>(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider$1;)V

    return-object v0

    .line 75
    :cond_0
    monitor-enter p0

    .line 76
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->getIsoDep()Landroid/nfc/tech/IsoDep;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "NfcProvider"

    const-string v3, "An Exception was encountered: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "NfcProvider"

    const-string v2, "connectCard: Card Tapped"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->connectToIsoDep()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->isCardTapped:Z

    .line 89
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider$ConnectionObjectImpl;

    invoke-direct {v0, p0, v1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider$ConnectionObjectImpl;-><init>(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider$1;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    return-object v0

    .line 90
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v2, "NfcProvider"

    const-string v3, "Connection failed, attempting to revalidate the tag: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    :try_start_5
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mIsoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    :cond_1
    goto :goto_3

    .line 97
    :catch_3
    move-exception v2

    .line 98
    .local v2, "ioException":Ljava/io/IOException;
    :try_start_6
    const-string v3, "NfcProvider"

    const-string v4, "Failed to close IsoDep: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v2    # "ioException":Ljava/io/IOException;
    :goto_3
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;->mTagEventListener:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->invalidateTag()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 104
    :cond_2
    const-wide/16 v2, 0x64

    :try_start_7
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 107
    :goto_4
    goto :goto_0

    .line 105
    :catch_4
    move-exception v0

    .line 106
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "ie":Ljava/lang/InterruptedException;
    goto :goto_4

    .line 110
    :cond_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    const-string v1, "Some Connection issue"

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->PROTOCOL_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method
