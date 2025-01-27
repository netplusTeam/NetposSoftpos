.class public Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterContainer"
.end annotation


# static fields
.field private static $$a:I

.field private static BuildConfig:I


# instance fields
.field additionalPOIDataSecondGenContainer:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.txp.tm.AdditionalPOIDataSecondGenContainer"
    .end annotation
.end field

.field receipt:Lcom/visa/vac/tc/emvconverter/Receipt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.txp.tm.TransactionCompletionSecondGenContainer"
    .end annotation
.end field

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;

.field transactionStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.tx.tm.TransactionStatus"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->this$0:Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalPOIDataSecondGenContainer()Ljava/lang/Object;
    .locals 3

    .line 67
    sget v0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->additionalPOIDataSecondGenContainer:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getReceipt()Lcom/visa/vac/tc/emvconverter/Receipt;
    .locals 3

    .line 76
    sget v0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->receipt:Lcom/visa/vac/tc/emvconverter/Receipt;

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    rem-int/lit8 v1, v1, 0x2

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

.method public getTransactionStatus()Ljava/lang/String;
    .locals 3

    .line 59
    sget v0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->transactionStatus:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public setAdditionalPOIDataSecondGenContainer(Ljava/lang/Object;)V
    .locals 2

    .line 72
    sget v0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->additionalPOIDataSecondGenContainer:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setReceipt(Lcom/visa/vac/tc/emvconverter/Receipt;)V
    .locals 2

    .line 80
    sget v0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->receipt:Lcom/visa/vac/tc/emvconverter/Receipt;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x42

    goto :goto_0

    :cond_1
    const/16 p1, 0x3d

    :goto_0
    packed-switch p1, :pswitch_data_0

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

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public setTransactionStatus(Ljava/lang/String;)V
    .locals 4

    .line 63
    sget v0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->transactionStatus:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x3c

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/4 p1, 0x0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion$ParameterContainer;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x4a

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method
