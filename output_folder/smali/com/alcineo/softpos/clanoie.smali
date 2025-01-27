.class public Lcom/alcineo/softpos/clanoie;
.super Lcom/alcineo/softpos/aoneilc;
.source "SourceFile"


# static fields
.field private static final aoleinc:Ljava/util/Properties;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/clanoie;->aoleinc:Ljava/util/Properties;

    const-string v1, "command.timeout"

    const-string v2, "1500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "command.timeout.ReadyForSales"

    const-string v2, "3600000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "options.auto_set_date_time"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "command.timeout.SendFileEnd"

    const-string v2, "60000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "command.timeout.GetRandomData"

    const-string v3, "2000"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "command.timeout.Capdu"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/clanoie;->aoleinc:Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/alcineo/softpos/aoneilc;-><init>(Ljava/util/Properties;)V

    return-void
.end method


# virtual methods
.method public native enolcai(Ljava/lang/String;)I
.end method
