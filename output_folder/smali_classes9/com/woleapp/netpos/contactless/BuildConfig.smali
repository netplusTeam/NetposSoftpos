.class public final Lcom/woleapp/netpos/contactless/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.woleapp.netpos.contactless.fcmbeasypay.debug"

.field public static final APPMODE_PROD:Ljava/lang/Boolean;

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final BUILD_VARIANT:Ljava/lang/String; = "debug"

.field public static final CR100_BDK_VALUE:Ljava/lang/String; = "null"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = "fcmbeasypay"

.field public static final VERSION_CODE:I = 0x32

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0.50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/woleapp/netpos/contactless/BuildConfig;->DEBUG:Z

    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/BuildConfig;->APPMODE_PROD:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
