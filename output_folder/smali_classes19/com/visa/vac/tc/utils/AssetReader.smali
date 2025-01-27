.class public Lcom/visa/vac/tc/utils/AssetReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getInstance:I


# instance fields
.field private getTerminalData:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/utils/AssetReader;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/utils/AssetReader;->BuildConfig:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/visa/vac/tc/utils/AssetReader;->getTerminalData:Landroid/content/res/AssetManager;

    .line 15
    return-void
.end method


# virtual methods
.method public getContentsOfFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    nop

    .line 18
    iget-object v0, p0, Lcom/visa/vac/tc/utils/AssetReader;->getTerminalData:Landroid/content/res/AssetManager;

    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    aput-object v0, v2, p1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x1

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v4, v5, v4

    rsub-int v4, v4, 0x4aaf

    int-to-char v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x17

    invoke-static {v0, v4, v5}, Lcom/c/c/$$a;->$$a(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v4, "getTerminalData"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetManager;

    aput-object v6, v5, p1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    sget v6, Lcom/visa/vac/tc/utils/AssetReader;->getInstance:I

    add-int/lit8 v6, v6, 0xd

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/visa/vac/tc/utils/AssetReader;->BuildConfig:I

    rem-int/2addr v6, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_0

    .line 25
    const/16 v6, 0x63

    goto :goto_1

    :cond_0
    const/16 v6, 0x59

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 28
    sget v6, Lcom/visa/vac/tc/utils/AssetReader;->getInstance:I

    add-int/2addr v6, v3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/visa/vac/tc/utils/AssetReader;->BuildConfig:I

    rem-int/2addr v6, v1

    if-nez v6, :cond_1

    goto :goto_2

    :pswitch_0
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    sget v0, Lcom/visa/vac/tc/utils/AssetReader;->BuildConfig:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/utils/AssetReader;->getInstance:I

    rem-int/2addr v0, v1

    .line 28
    return-object p1

    .line 25
    :goto_2
    move v6, v3

    goto :goto_3

    :cond_1
    move v6, p1

    :goto_3
    packed-switch v6, :pswitch_data_1

    .line 24
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    goto :goto_4

    .line 24
    :pswitch_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_4
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :catchall_0
    move-exception p1

    throw p1

    .line 18
    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0

    :cond_2
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
