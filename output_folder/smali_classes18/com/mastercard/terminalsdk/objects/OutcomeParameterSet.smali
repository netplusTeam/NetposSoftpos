.class public final Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;,
        Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;,
        Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;,
        Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;,
        Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;
    }
.end annotation


# instance fields
.field private a:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

.field private b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

.field private c:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

.field private d:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field private e:Z

.field private f:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private m:S

.field private o:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->d:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->a:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->c:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->f:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    const/16 v0, 0xff

    iput-short v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->o:S

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->m:S

    return-void
.end method

.method private a()[B
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->d:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->getStatus()I

    move-result v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v4, 0x0

    aput-byte v2, v1, v4

    iget-object v2, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->getStart()I

    move-result v2

    and-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v5, 0x1

    aput-byte v2, v1, v5

    iget-object v2, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->c:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->getOnlineResponseData()I

    move-result v2

    and-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v5, 0x2

    aput-byte v2, v1, v5

    iget-object v2, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->a:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->getCVM()I

    move-result v2

    and-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v5, 0x3

    aput-byte v2, v1, v5

    const/4 v2, 0x4

    aget-byte v5, v1, v2

    iget-boolean v6, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->e:Z

    if-eqz v6, :cond_0

    const/16 v6, -0x80

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    iget-boolean v6, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->j:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x40

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    iget-boolean v6, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->h:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    iget-boolean v6, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->i:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x10

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    iget-boolean v6, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->g:Z

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->f:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;->getAlternateInterfacePreference()I

    move-result v2

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    iget-short v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->o:S

    const/4 v2, 0x6

    if-le v0, v3, :cond_5

    const/4 v0, -0x1

    aput-byte v0, v1, v2

    goto :goto_5

    :cond_5
    and-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :goto_5
    const/4 v0, 0x7

    iget-short v2, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->m:S

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    return-object v1
.end method


# virtual methods
.method protected final c()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->c()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    move-result-object v0

    return-object v0
.end method

.method public final getAlternateInterfacePreference()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->f:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    return-object v0
.end method

.method public final getCvm()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->a:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    return-object v0
.end method

.method public final getFieldOffRequestHoldTime()I
    .locals 1

    iget-short v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->o:S

    return v0
.end method

.method public final getOnlineResponseData()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->c:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    return-object v0
.end method

.method public final getRemovalTimeout()I
    .locals 1

    iget-short v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->m:S

    return v0
.end method

.method public final getStart()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    return-object v0
.end method

.method public final getStatus()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->d:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    return-object v0
.end method

.method public final isDataRecordPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->h:Z

    return v0
.end method

.method public final isDiscretionaryDataPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->i:Z

    return v0
.end method

.method public final isReceiptRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->g:Z

    return v0
.end method

.method public final isUIRequestedOnOutcome()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->e:Z

    return v0
.end method

.method public final isUIRequestedOnRestart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->j:Z

    return v0
.end method

.method public final setAlternateInterfacePreference(Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->f:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$AlternateInterfacePreference;

    return-void
.end method

.method public final setCvm(Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->a:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    return-void
.end method

.method public final setDataRecordStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->h:Z

    return-void
.end method

.method public final setDiscretionaryDataStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->i:Z

    return-void
.end method

.method public final setFieldOffRequestHoldTime(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    iput-short p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->o:S

    return-void
.end method

.method public final setOnlineResponseData(Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->c:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    return-void
.end method

.method public final setReceiptStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->g:Z

    return-void
.end method

.method public final setRemovalTimeout(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    iput-short p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->m:S

    return-void
.end method

.method public final setStart(Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    return-void
.end method

.method public final setStatus(Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;)V
    .locals 0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->d:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    return-void
.end method

.method public final setUIRequestedOnOutcomeStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->e:Z

    return-void
.end method

.method public final setUIRequestedOnRestartStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTlv()Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .locals 7

    new-instance v6, Lcom/mastercard/terminalsdk/emv/Tag;

    const/16 v0, 0x25

    const/16 v1, 0x94

    const v2, 0x82b6

    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v4, "cR"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "b"

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v3, 0x8

    const/16 v4, 0x8

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    new-instance v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    new-instance v1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-direct {v0, v6, v1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    throw v1

    :cond_0
    throw v0
.end method
