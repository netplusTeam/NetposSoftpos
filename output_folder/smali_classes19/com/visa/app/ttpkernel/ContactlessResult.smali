.class public Lcom/visa/app/ttpkernel/ContactlessResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static contactlessResult:Lcom/visa/app/ttpkernel/ContactlessResult;

.field private static getInstance:I


# instance fields
.field private command:[B

.field private error:Ljava/lang/String;

.field private finalOutcome:Lcom/visa/app/ttpkernel/TtpOutcome;

.field private internalData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field internalDataTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resultData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private status:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    const/4 v1, 0x0

    sput-object v1, Lcom/visa/app/ttpkernel/ContactlessResult;->contactlessResult:Lcom/visa/app/ttpkernel/ContactlessResult;

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->ABORTED:Lcom/visa/app/ttpkernel/TtpOutcome;

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->finalOutcome:Lcom/visa/app/ttpkernel/TtpOutcome;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->resultData:Ljava/util/HashMap;

    .line 22
    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->internalData:Ljava/util/HashMap;

    .line 24
    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->error:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/visa/app/ttpkernel/ContactlessResult$5;

    invoke-direct {v0}, Lcom/visa/app/ttpkernel/ContactlessResult$5;-><init>()V

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->internalDataTags:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->resultData:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->internalData:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/visa/app/ttpkernel/ContactlessResult;
    .locals 2

    .line 66
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 62
    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/visa/app/ttpkernel/ContactlessResult;->contactlessResult:Lcom/visa/app/ttpkernel/ContactlessResult;

    if-nez v0, :cond_1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    throw v0

    .line 63
    :goto_1
    new-instance v0, Lcom/visa/app/ttpkernel/ContactlessResult;

    invoke-direct {v0}, Lcom/visa/app/ttpkernel/ContactlessResult;-><init>()V

    sput-object v0, Lcom/visa/app/ttpkernel/ContactlessResult;->contactlessResult:Lcom/visa/app/ttpkernel/ContactlessResult;

    .line 66
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    :cond_1
    sget-object v0, Lcom/visa/app/ttpkernel/ContactlessResult;->contactlessResult:Lcom/visa/app/ttpkernel/ContactlessResult;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(I)Lcom/visa/app/ttpkernel/ContactlessResult;
    .locals 2

    .line 54
    nop

    .line 53
    new-instance p0, Lcom/visa/app/ttpkernel/ContactlessResult;

    invoke-direct {p0}, Lcom/visa/app/ttpkernel/ContactlessResult;-><init>()V

    .line 54
    sput-object p0, Lcom/visa/app/ttpkernel/ContactlessResult;->contactlessResult:Lcom/visa/app/ttpkernel/ContactlessResult;

    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

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
    return-object p0

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 163
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->resultData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 161
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->internalData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->command:[B

    .line 163
    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->status:[B

    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getData()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 110
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->resultData:Ljava/util/HashMap;

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

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

.method public getError()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->error:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

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

.method public getFinalOutcome()Lcom/visa/app/ttpkernel/TtpOutcome;
    .locals 5

    .line 75
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->finalOutcome:Lcom/visa/app/ttpkernel/TtpOutcome;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->finalOutcome:Lcom/visa/app/ttpkernel/TtpOutcome;

    const/16 v4, 0x38

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getInternalData()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 153
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v1, v0, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->internalData:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getLastApdu()[B
    .locals 3

    .line 171
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x63

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->command:[B

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

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
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public getLastSW()[B
    .locals 3

    .line 179
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->status:[B

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public setData(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 124
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 120
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 120
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_2

    .line 124
    :pswitch_0
    return-void

    .line 121
    :goto_2
    const/16 v0, 0x3b

    goto :goto_3

    :cond_1
    const/16 v0, 0x48

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 121
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->internalDataTags:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    goto :goto_4

    .line 120
    :pswitch_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    iget-object v2, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->internalDataTags:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    sget v2, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->internalData:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->resultData:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 124
    :cond_4
    goto :goto_0

    .line 121
    :goto_4
    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :catchall_0
    move-exception p1

    throw p1

    :cond_5
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_1
    .end packed-switch
.end method

.method protected setError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v1, v0, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->error:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x3b

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setFinalOutcome(Lcom/visa/app/ttpkernel/TtpOutcome;)V
    .locals 2

    .line 84
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->finalOutcome:Lcom/visa/app/ttpkernel/TtpOutcome;

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setLastCommand([B)V
    .locals 4

    .line 188
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 187
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->command:[B

    .line 188
    array-length v3, p1

    int-to-short v3, v3

    invoke-static {p1, v2, v0, v2, v3}, Lcom/visa/vac/tc/emvconverter/Utils;->arrayCopy([BS[BSS)S

    goto :goto_1

    .line 187
    :pswitch_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->command:[B

    .line 188
    array-length v3, p1

    int-to-short v3, v3

    invoke-static {p1, v2, v0, v2, v3}, Lcom/visa/vac/tc/emvconverter/Utils;->arrayCopy([BS[BSS)S

    :goto_1
    sget p1, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_1

    const/16 v1, 0x3b

    :cond_1
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x52

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch
.end method

.method public setLastSW([B)V
    .locals 5

    .line 201
    nop

    .line 198
    sget v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 196
    :cond_0
    nop

    .line 197
    array-length v0, p1

    if-le v0, v2, :cond_1

    .line 198
    const/16 v0, 0x49

    goto :goto_0

    :cond_1
    const/16 v0, 0x47

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    move v1, v3

    goto :goto_3

    .line 201
    :pswitch_0
    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 198
    const/16 v1, 0xc

    goto :goto_1

    :cond_2
    const/16 v1, 0x53

    :goto_1
    packed-switch v1, :pswitch_data_1

    array-length v1, p1

    sub-int/2addr v1, v2

    goto :goto_2

    :pswitch_1
    array-length v1, p1

    shl-int/lit8 v1, v1, 0x4

    .line 201
    :goto_2
    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/visa/app/ttpkernel/ContactlessResult;->BuildConfig:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 200
    :cond_3
    :goto_3
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessResult;->status:[B

    .line 201
    int-to-short v1, v1

    invoke-static {p1, v1, v0, v3, v2}, Lcom/visa/vac/tc/emvconverter/Utils;->arrayCopy([BS[BSS)S

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
    .end packed-switch
.end method
