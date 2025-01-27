.class public final Lcom/visa/vac/tc/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.visa.vac.tc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field private static BuildConfig:I = 0x0

.field private static ContactlessConfiguration:I = 0x0

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "prod"

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.visa.vac.tc"

.field public static final PTSLogging:Z = true

.field public static final SESSION_RENEWAL_DELAY:J = 0x2cbL

.field public static final SESSION_RENEWAL_TIMEUNIT:Ljava/util/concurrent/TimeUnit;

.field public static final TapToPairMode:Z = true

.field public static final VCPSTesting:Z = false

.field public static final VERSION_CODE:I = 0x21

.field public static final VERSION_NAME:Ljava/lang/String; = "19.10-beta"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/BuildConfig;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/BuildConfig;->ContactlessConfiguration:I

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/visa/vac/tc/BuildConfig;->SESSION_RENEWAL_TIMEUNIT:Ljava/util/concurrent/TimeUnit;

    sget v0, Lcom/visa/vac/tc/BuildConfig;->BuildConfig:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/BuildConfig;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

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
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
