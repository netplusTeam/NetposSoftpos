.class public Lcom/visa/vac/tc/emvconverter/ApduScript;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static ContactlessResult:I

.field private static getFinalOutcome:I


# instance fields
.field private $$a:Ljava/lang/String;

.field private BuildConfig:Ljava/lang/String;

.field private ContactlessConfiguration:Ljava/lang/String;

.field private ContactlessKernel:Ljava/lang/String;

.field private access$200:Ljava/lang/String;

.field private access$300:Ljava/lang/Boolean;

.field private clear:Ljava/lang/String;

.field private convertToArrayMap:Ljava/lang/String;

.field private getInstance:Ljava/lang/String;

.field private getKernelData:[Ljava/lang/String;

.field private getTerminalData:Ljava/lang/String;

.field private getTransactionType:Ljava/lang/String;

.field private performTransaction:Ljava/lang/String;

.field private setData:Ljava/lang/String;

.field private setFinalOutcome:Ljava/lang/String;

.field private setTerminalData:Ljava/lang/String;

.field private setTerminate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessConfiguration:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->BuildConfig:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getInstance:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getTerminalData:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->$$a:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setTerminalData:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->clear:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessKernel:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setTerminate:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->performTransaction:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getKernelData:[Ljava/lang/String;

    .line 19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->access$300:Ljava/lang/Boolean;

    .line 20
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->access$200:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getTransactionType:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->convertToArrayMap:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setFinalOutcome:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setData:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->BuildConfig:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getInstance:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public clone()Lcom/visa/vac/tc/emvconverter/ApduScript;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visa/vac/tc/emvconverter/ApduScript;

    sget v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->clone()Lcom/visa/vac/tc/emvconverter/ApduScript;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x15

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCLA()Ljava/lang/String;
    .locals 3

    .line 69
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->$$a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getDATA()Ljava/lang/String;
    .locals 3

    .line 123
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setTerminate:Ljava/lang/String;

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getException_action()Ljava/lang/String;
    .locals 3

    .line 168
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->convertToArrayMap:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getHasDependancy()Ljava/lang/Boolean;
    .locals 3

    .line 192
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->access$300:Ljava/lang/Boolean;

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getINS()Ljava/lang/String;
    .locals 3

    .line 77
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setTerminalData:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getInterfaceID()Ljava/lang/String;
    .locals 3

    .line 45
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->BuildConfig:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->BuildConfig:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v2, 0xc

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getLE()Ljava/lang/String;
    .locals 3

    .line 101
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->performTransaction:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getNeg_action()Ljava/lang/String;
    .locals 3

    .line 160
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getTransactionType:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getTransactionType:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v2, 0x48

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getOperation()Ljava/lang/String;
    .locals 4

    .line 61
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x5f

    goto :goto_0

    :cond_0
    const/16 v1, 0x63

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getTerminalData:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getTerminalData:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v3, 0x13

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-object v1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getP1()Ljava/lang/String;
    .locals 3

    .line 85
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->clear:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x4

    goto :goto_2

    :cond_1
    const/16 v1, 0x53

    :goto_2
    packed-switch v1, :pswitch_data_1

    return-object v0

    :pswitch_1
    const/16 v1, 0x4d

    :try_start_1
    div-int/lit8 v1, v1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method

.method public getP2()Ljava/lang/String;
    .locals 6

    .line 93
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessKernel:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getPos_action()Ljava/lang/String;
    .locals 2

    .line 152
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->access$200:Ljava/lang/String;

    return-object v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSW()[Ljava/lang/String;
    .locals 3

    .line 109
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getKernelData:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getScriptAlias()Ljava/lang/String;
    .locals 3

    .line 37
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessConfiguration:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public getScriptInput()Ljava/lang/String;
    .locals 5

    .line 176
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x20

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setFinalOutcome:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch
.end method

.method public getScriptOutput()Ljava/lang/String;
    .locals 5

    .line 184
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x5e

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setData:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v2, 0x4f

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v0

    :goto_2
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_1
    .end packed-switch
.end method

.method public getSvID()Ljava/lang/String;
    .locals 3

    .line 53
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getInstance:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCLA(Ljava/lang/String;)V
    .locals 3

    .line 73
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->$$a:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x45

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setDATA(Ljava/lang/String;)V
    .locals 5

    .line 127
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setTerminate:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setDATA([B)V
    .locals 2

    .line 131
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setTerminate:Ljava/lang/String;

    sget p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_1

    const/4 v1, 0x6

    :cond_1
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setException_action(Ljava/lang/String;)V
    .locals 3

    .line 172
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->convertToArrayMap:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setHasDependancy()V
    .locals 5

    .line 201
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 198
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getP1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getP1()Ljava/lang/String;

    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :catchall_0
    move-exception v0

    throw v0

    .line 196
    :goto_1
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getP1()Ljava/lang/String;

    move-result-object v0

    const-string v4, "V."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    move v1, v2

    goto :goto_2

    :cond_1
    nop

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 196
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getP2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 196
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/ApduScript;->getDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :catchall_1
    move-exception v0

    throw v0

    .line 199
    :cond_4
    :goto_3
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->access$300:Ljava/lang/Boolean;

    return-void

    .line 201
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->access$300:Ljava/lang/Boolean;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setINS(Ljava/lang/String;)V
    .locals 2

    .line 81
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setTerminalData:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setInterfaceID(Ljava/lang/String;)V
    .locals 2

    .line 49
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->BuildConfig:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x9

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setLE(Ljava/lang/String;)V
    .locals 2

    .line 105
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->performTransaction:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setNeg_action(Ljava/lang/String;)V
    .locals 2

    .line 164
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getTransactionType:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x46

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 3

    .line 65
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getTerminalData:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setP1(Ljava/lang/String;)V
    .locals 2

    .line 89
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->clear:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x56

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public setP2(Ljava/lang/String;)V
    .locals 3

    .line 97
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessKernel:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setPos_action(Ljava/lang/String;)V
    .locals 2

    .line 156
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->access$200:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x4a

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setSW(Ljava/lang/String;)V
    .locals 2

    .line 118
    nop

    .line 114
    if-eqz p1, :cond_0

    .line 118
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 116
    :cond_2
    const-string v0, "["

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0X"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 117
    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 118
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getKernelData:[Ljava/lang/String;

    sget p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :goto_2
    sget p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setScriptAlias(Ljava/lang/String;)V
    .locals 3

    .line 41
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessConfiguration:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x1b

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public setScriptInput(Ljava/lang/String;)V
    .locals 3

    .line 180
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setFinalOutcome:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setScriptOutput(Ljava/lang/String;)V
    .locals 2

    .line 188
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->setData:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch
.end method

.method public setSvID(Ljava/lang/String;)V
    .locals 3

    .line 57
    sget v0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getFinalOutcome:I

    add-int/lit8 v1, v0, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/ApduScript;->getInstance:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/ApduScript;->ContactlessResult:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
