.class public final enum Lcom/visa/app/ttpkernel/TtpOutcome;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visa/app/ttpkernel/TtpOutcome;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visa/app/ttpkernel/TtpOutcome;

.field public static final enum ABORTED:Lcom/visa/app/ttpkernel/TtpOutcome;

.field public static final enum COMPLETED:Lcom/visa/app/ttpkernel/TtpOutcome;

.field public static final enum DECLINED:Lcom/visa/app/ttpkernel/TtpOutcome;

.field public static final enum SELECTAGAIN:Lcom/visa/app/ttpkernel/TtpOutcome;

.field public static final enum TRYNEXT:Lcom/visa/app/ttpkernel/TtpOutcome;

.field private static getInstance:I

.field private static getTerminalData:I


# instance fields
.field private final outcome:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/visa/app/ttpkernel/TtpOutcome;->getInstance:I

    const/4 v1, 0x1

    sput v1, Lcom/visa/app/ttpkernel/TtpOutcome;->getTerminalData:I

    new-instance v2, Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v3, "COMPLETED"

    invoke-direct {v2, v3, v0, v0}, Lcom/visa/app/ttpkernel/TtpOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/visa/app/ttpkernel/TtpOutcome;->COMPLETED:Lcom/visa/app/ttpkernel/TtpOutcome;

    .line 9
    new-instance v3, Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v4, "DECLINED"

    invoke-direct {v3, v4, v1, v1}, Lcom/visa/app/ttpkernel/TtpOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visa/app/ttpkernel/TtpOutcome;->DECLINED:Lcom/visa/app/ttpkernel/TtpOutcome;

    .line 10
    new-instance v4, Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v5, "ABORTED"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v6}, Lcom/visa/app/ttpkernel/TtpOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visa/app/ttpkernel/TtpOutcome;->ABORTED:Lcom/visa/app/ttpkernel/TtpOutcome;

    .line 11
    new-instance v5, Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v7, "TRYNEXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visa/app/ttpkernel/TtpOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visa/app/ttpkernel/TtpOutcome;->TRYNEXT:Lcom/visa/app/ttpkernel/TtpOutcome;

    .line 12
    new-instance v7, Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v9, "SELECTAGAIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visa/app/ttpkernel/TtpOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visa/app/ttpkernel/TtpOutcome;->SELECTAGAIN:Lcom/visa/app/ttpkernel/TtpOutcome;

    .line 7
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visa/app/ttpkernel/TtpOutcome;

    aput-object v2, v9, v0

    aput-object v3, v9, v1

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/visa/app/ttpkernel/TtpOutcome;->$VALUES:[Lcom/visa/app/ttpkernel/TtpOutcome;

    sget v0, Lcom/visa/app/ttpkernel/TtpOutcome;->getTerminalData:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/TtpOutcome;->getInstance:I

    rem-int/2addr v0, v6

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

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
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/visa/app/ttpkernel/TtpOutcome;->outcome:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visa/app/ttpkernel/TtpOutcome;
    .locals 2

    .line 7
    sget v0, Lcom/visa/app/ttpkernel/TtpOutcome;->getTerminalData:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/TtpOutcome;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const-class v0, Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visa/app/ttpkernel/TtpOutcome;

    sget v0, Lcom/visa/app/ttpkernel/TtpOutcome;->getInstance:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/TtpOutcome;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static values()[Lcom/visa/app/ttpkernel/TtpOutcome;
    .locals 3

    .line 7
    sget v0, Lcom/visa/app/ttpkernel/TtpOutcome;->getTerminalData:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/TtpOutcome;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->$VALUES:[Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {v0}, [Lcom/visa/app/ttpkernel/TtpOutcome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visa/app/ttpkernel/TtpOutcome;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->$VALUES:[Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {v0}, [Lcom/visa/app/ttpkernel/TtpOutcome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visa/app/ttpkernel/TtpOutcome;

    sget v1, Lcom/visa/app/ttpkernel/TtpOutcome;->getTerminalData:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/TtpOutcome;->getInstance:I

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getValue()I
    .locals 3

    .line 25
    sget v0, Lcom/visa/app/ttpkernel/TtpOutcome;->getTerminalData:I

    add-int/lit8 v1, v0, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/TtpOutcome;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/visa/app/ttpkernel/TtpOutcome;->outcome:I

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
    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/TtpOutcome;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
