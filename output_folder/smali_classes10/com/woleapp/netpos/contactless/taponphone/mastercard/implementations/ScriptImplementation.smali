.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;
.super Ljava/lang/Object;
.source "ScriptImplementation.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/ScriptProvider;


# instance fields
.field private final TAG:Ljava/lang/String;

.field activateWrite:Z

.field mFlag:Z

.field tagstoRead:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "ScriptImplementation"

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->mFlag:Z

    .line 26
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->tagstoRead:[B

    .line 28
    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->activateWrite:Z

    return-void

    nop

    :array_0
    .array-data 1
        -0x61t
        0x75t
        -0x61t
        0x76t
    .end array-data
.end method

.method static synthetic access$000(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    .line 20
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;)[B
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    .line 20
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->getTagsToRead()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;)V
    .locals 0
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    .line 20
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->resetTagstoRead()V

    return-void
.end method

.method private final getCurrentDateTime()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "formattedDate":Ljava/lang/String;
    return-object v1
.end method

.method private getTagsToRead()[B
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->mFlag:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->tagstoRead:[B

    return-object v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method private resetTagstoRead()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->mFlag:Z

    .line 104
    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mastercard/terminalsdk/objects/ApplicationInput;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "dataSent",
            "dataNeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;)",
            "Lcom/mastercard/terminalsdk/objects/ApplicationInput;"
        }
    .end annotation

    .line 36
    .local p1, "dataSent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mastercard/terminalsdk/iso8825/BerTlv;>;"
    .local p2, "dataNeeded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mastercard/terminalsdk/iso8825/BerTlv;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "dataRequested":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mastercard/terminalsdk/iso8825/BerTlv;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    .line 39
    .local v2, "berTlv":Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v3

    .line 40
    .local v3, "requestedTag":Lcom/mastercard/terminalsdk/emv/Tag;
    new-instance v4, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    new-instance v5, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    .line 41
    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/emv/Tag;->getMinLen()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v5, v6}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-direct {v4, v3, v5}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    .line 40
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v2    # "berTlv":Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .end local v3    # "requestedTag":Lcom/mastercard/terminalsdk/emv/Tag;
    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;

    invoke-direct {v1, p0, v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;-><init>(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;Ljava/util/ArrayList;)V

    return-object v1
.end method
