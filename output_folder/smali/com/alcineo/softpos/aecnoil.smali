.class public Lcom/alcineo/softpos/aecnoil;
.super Lcom/alcineo/softpos/aoneilc;
.source "SourceFile"


# static fields
.field private static final aoleinc:Ljava/util/Properties;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/aecnoil;->aoleinc:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/aecnoil;->aoleinc:Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/alcineo/softpos/aoneilc;-><init>(Ljava/util/Properties;)V

    return-void
.end method


# virtual methods
.method public native enolcai(Ljava/lang/String;)Ljava/lang/String;
.end method
