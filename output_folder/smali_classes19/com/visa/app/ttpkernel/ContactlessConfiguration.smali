.class public Lcom/visa/app/ttpkernel/ContactlessConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessConfiguration:I

.field private static contactlessConfiguration:Lcom/visa/app/ttpkernel/ContactlessConfiguration;

.field private static getInstance:I


# instance fields
.field private terminalData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->ContactlessConfiguration:I

    const/4 v1, 0x0

    sput-object v1, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->contactlessConfiguration:Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->terminalData:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    .locals 3

    .line 57
    sget v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 53
    :cond_0
    sget-object v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->contactlessConfiguration:Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    invoke-direct {v0}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;-><init>()V

    sput-object v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->contactlessConfiguration:Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    .line 57
    nop

    :cond_1
    sget-object v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->contactlessConfiguration:Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    sget v1, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/16 v1, 0x53

    goto :goto_0

    :cond_2
    const/16 v1, 0x1d

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x4e

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 87
    sget v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->terminalData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    sget v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getTerminalData()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 69
    sget v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->terminalData:Ljava/util/HashMap;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->terminalData:Ljava/util/HashMap;

    goto :goto_2

    :goto_1
    const/16 v1, 0x16

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method

.method public setTerminalData(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 79
    nop

    .line 78
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 79
    sget v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/16 v0, 0x5a

    goto :goto_2

    :cond_1
    const/16 v0, 0x56

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
    sget v0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 78
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    iget-object v1, p0, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->terminalData:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_1
    .end packed-switch
.end method
