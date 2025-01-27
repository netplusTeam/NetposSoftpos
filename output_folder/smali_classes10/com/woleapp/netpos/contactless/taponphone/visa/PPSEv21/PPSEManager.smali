.class public Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;
.super Ljava/lang/Object;
.source "PPSEManager.java"


# static fields
.field public static final SELECT_PPSE:[B


# instance fields
.field final PPSE_AID:[B

.field private candidateIndex:I

.field private candidates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private supportedAids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->SELECT_PPSE:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xet
        0x32t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->PPSE_AID:[B

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidateIndex:I

    .line 80
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->supportedAids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->supportedAids:Ljava/util/ArrayList;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    .line 86
    :cond_1
    return-void

    :array_0
    .array-data 1
        0x32t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method private insertCandidate(Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;)Z
    .locals 5
    .param p1, "candidate"    # Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidate"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    .line 255
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getAid()[B

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getAid()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getAid()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_2

    goto :goto_4

    .line 268
    :cond_2
    const/4 v1, 0x0

    .line 269
    .local v1, "matched":Z
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->supportedAids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 271
    .local v3, "supported":[B
    invoke-virtual {p0, p1, v3}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->matchCandidate(Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    const/4 v1, 0x1

    .line 273
    goto :goto_1

    .line 275
    .end local v3    # "supported":[B
    :cond_3
    goto :goto_0

    .line 278
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 279
    return v0

    .line 287
    :cond_5
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getPriorityIndicator()B

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    .line 288
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 289
    return v2

    .line 292
    :cond_6
    const/4 v0, 0x0

    .line 293
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 294
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getPriorityIndicator()B

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    .line 295
    :cond_7
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getPriorityIndicator()B

    move-result v3

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getPriorityIndicator()B

    move-result v4

    if-le v3, v4, :cond_8

    goto :goto_3

    .line 293
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 297
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v3, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 299
    return v2

    .line 263
    .end local v0    # "index":I
    .end local v1    # "matched":Z
    :cond_a
    :goto_4
    return v0

    .line 256
    :cond_b
    :goto_5
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidateIndex:I

    .line 341
    return-void
.end method

.method getCandidate()Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    iget v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidateIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;

    return-object v0

    .line 330
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method matchCandidate(Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;[B)Z
    .locals 3
    .param p1, "c"    # Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;
    .param p2, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "m"
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getAid()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getAid()[B

    move-result-object v1

    array-length v1, v1

    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 317
    return v0

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getAid()[B

    move-result-object v1

    array-length v2, p2

    invoke-static {v1, v0, p2, v0, v2}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Utils;->arrayCompare([BI[BII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 322
    return v0

    .line 325
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 312
    :cond_3
    :goto_0
    return v0
.end method

.method public nextCandidate()[B
    .locals 2

    .line 116
    iget v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidateIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    iget v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidateIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidateIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getAid()[B

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectPPSE(Lcom/visa/app/ttpkernel/NfcTransceiver;)[B
    .locals 11
    .param p1, "nfcTransceiver"    # Lcom/visa/app/ttpkernel/NfcTransceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nfcTransceiver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidateIndex:I

    .line 137
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->candidates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->supportedAids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    sget-object v1, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->SELECT_PPSE:[B

    invoke-interface {p1, v1}, Lcom/visa/app/ttpkernel/NfcTransceiver;->transceive([B)[B

    move-result-object v1

    .line 151
    .local v1, "receiveData":[B
    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->validatePPSETemplate([B)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v2

    .line 158
    .local v2, "tlvBF0C":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    iget-object v3, v2, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->moreTLVs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    .line 160
    .local v4, "entry":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    const/16 v6, 0x4f

    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(S)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v6

    .line 161
    .local v6, "temp":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    if-nez v6, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->getValue()[B

    move-result-object v7

    .line 164
    .local v7, "aid":[B
    :goto_1
    const/16 v8, 0x50

    invoke-virtual {v4, v8}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(S)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v6

    .line 165
    if-nez v6, :cond_2

    move-object v8, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->getValue()[B

    move-result-object v8

    .line 168
    .local v8, "label":[B
    :goto_2
    const/16 v9, -0x60ee

    invoke-virtual {v4, v9}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(S)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v6

    .line 169
    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->getValue()[B

    move-result-object v5

    .line 173
    .local v5, "name":[B
    :goto_3
    const/16 v9, 0x87

    invoke-virtual {v4, v9}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(S)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v6

    .line 174
    if-nez v6, :cond_4

    move v9, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->getValue()[B

    move-result-object v9

    aget-byte v9, v9, v0

    .line 177
    .local v9, "priority":B
    :goto_4
    if-eqz v7, :cond_5

    .line 178
    new-instance v10, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;

    invoke-direct {v10, v7, v5, v8, v9}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;-><init>([B[B[BB)V

    invoke-direct {p0, v10}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->insertCandidate(Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;)Z

    .line 180
    .end local v4    # "entry":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    .end local v6    # "temp":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    :cond_5
    goto :goto_0

    .line 183
    .end local v5    # "name":[B
    .end local v7    # "aid":[B
    .end local v8    # "label":[B
    .end local v9    # "priority":B
    :cond_6
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->getCandidate()Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->getCandidate()Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->getAid()[B

    move-result-object v0

    return-object v0

    .line 186
    :cond_7
    return-object v5

    .line 143
    .end local v1    # "receiveData":[B
    .end local v2    # "tlvBF0C":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "List of Reader Supported AIDs is missing. Please initialize using setSupportedApps()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSupportedApps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportedAid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "supportedAid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 96
    return-void

    .line 100
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->supportedAids:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v1    # "aid":Ljava/lang/String;
    goto :goto_0

    .line 104
    .restart local v1    # "aid":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v2, "PPSE"

    const-string v3, "Invalid RID Length."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_0

    .line 109
    .end local v1    # "aid":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method validatePPSETemplate([B)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    .locals 8
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_7

    .line 201
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    array-length v2, p1

    sub-int/2addr v2, v1

    int-to-short v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;-><init>([BSS)V

    .line 205
    .local v0, "tlv":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    const/16 v1, 0x6f

    invoke-virtual {v0, v1, v2}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(SI)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 210
    const/16 v1, 0x84

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(SI)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v1

    .line 211
    .local v1, "tlv84":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    if-eqz v1, :cond_5

    .line 215
    iget-short v4, v1, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->length:S

    const/16 v5, 0xe

    if-ne v4, v5, :cond_4

    .line 219
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->getValue()[B

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->PPSE_AID:[B

    array-length v5, v5

    const-string v6, "Invalid PPSE DF Name."

    if-ne v4, v5, :cond_3

    .line 222
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->getValue()[B

    move-result-object v4

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/PPSEManager;->PPSE_AID:[B

    array-length v7, v5

    invoke-static {v4, v2, v5, v2, v7}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Utils;->arrayCompare([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    const/16 v2, 0xa5

    invoke-virtual {v0, v2, v3}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(SI)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v2

    .line 229
    .local v2, "tlvA5":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    if-eqz v2, :cond_1

    .line 234
    const/16 v4, -0x40f4

    invoke-virtual {v2, v4, v3}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(SI)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v3

    .line 235
    .local v3, "tlvBF0C":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    if-eqz v3, :cond_0

    .line 240
    return-object v3

    .line 236
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid PPSE TLV Format. Missing FCI Issuer Discretionary Data Template (0xBF0C)"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    .end local v3    # "tlvBF0C":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid PPSE TLV Format. Missing FCI Proprietary Template (0xA5)."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    .end local v2    # "tlvA5":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid PPSE TLV Format. Invalid DF Name Length (0x84)."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalide PPSE TLV Format. Missing DF Name Template (0x84)."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .end local v1    # "tlv84":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid PPSE TLV Format. Missing FCI Template (0x6F)."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    .end local v0    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid PPSE Response Data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
