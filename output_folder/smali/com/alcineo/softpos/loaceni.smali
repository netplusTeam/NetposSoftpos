.class public Lcom/alcineo/softpos/loaceni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aoleinc:Ljava/lang/String; = "loaceni"


# instance fields
.field private final acileon:Lcom/alcineo/softpos/aleonci;


# direct methods
.method public static synthetic $r8$lambda$C2KRpZAQJ_dpQgLBOBfV2q3obU4(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/alcineo/softpos/loaceni;->acileon(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SKdakuh73NwobmqctPW9J3fO7HE(Ljava/util/List;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alcineo/softpos/loaceni;->acileon(Ljava/util/List;[B)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aleonci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/loaceni;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-direct {p0}, Lcom/alcineo/softpos/loaceni;->acileon()V

    return-void
.end method

.method private acileon()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alcineo/softpos/loaceni;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-virtual {v1}, Lcom/alcineo/softpos/aleonci;->aoleinc()Lcom/alcineo/softpos/lniaeoc;

    move-result-object v1

    iget-object v2, p0, Lcom/alcineo/softpos/loaceni;->acileon:Lcom/alcineo/softpos/aleonci;

    invoke-static {v1, v2}, Lcom/alcineo/softpos/acileon;->noaceli(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;)Lcom/alcineo/softpos/alineco;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/loaceni$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/alcineo/softpos/loaceni$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$acileon;)Lcom/alcineo/softpos/oaeclin;

    move-result-object v1

    new-instance v2, Lcom/alcineo/softpos/loaceni$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/alcineo/softpos/loaceni$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$noaceli;)Lcom/alcineo/softpos/oaeclin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alcineo/softpos/oaeclin;->aoleinc()V

    return-void
.end method

.method private static native synthetic acileon(Ljava/lang/Exception;)V
.end method

.method private static native synthetic acileon(Ljava/util/List;[B)V
.end method


# virtual methods
.method public native acileon(Lcom/alcineo/administrative/FileId;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native acileon(Lcom/alcineo/administrative/Kernel;[B[BLcom/alcineo/softpos/payment/model/SettingsSheet;B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation
.end method

.method public native acileon(Lcom/alcineo/administrative/Kernel;Z)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation
.end method

.method public native acileon(Lcom/alcineo/administrative/Kernel;[BLcom/alcineo/softpos/payment/model/SettingsSheet;B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation
.end method

.method public native aoleinc()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation
.end method
