.class final Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visa/vac/tc/VACThinClient$TransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/app/ttpkernel/ContactlessKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getInstance"
.end annotation


# static fields
.field private static getInstance:I

.field private static getTerminalData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getInstance:I

    return-void
.end method

.method synthetic constructor <init>()V
    .locals 1

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCVM(ILcom/visa/vac/tc/emvconverter/Transaction;)V
    .locals 0

    sget p1, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getInstance:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getTerminalData:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

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
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete(ILcom/visa/vac/tc/emvconverter/Transaction;)V
    .locals 1

    sget p1, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getInstance:I

    const/16 p2, 0x9

    add-int/2addr p1, p2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getTerminalData:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p2, 0x1f

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
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

.method public final onFailure(ILcom/visa/vac/tc/emvconverter/Transaction;)V
    .locals 0

    sget p1, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getTerminalData:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getInstance:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final onProgress(ILcom/visa/vac/tc/emvconverter/Transaction;)V
    .locals 0

    sget p1, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getInstance:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;->getTerminalData:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x32

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x19

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method
