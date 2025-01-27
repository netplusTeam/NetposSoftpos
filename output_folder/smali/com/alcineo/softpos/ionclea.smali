.class public Lcom/alcineo/softpos/ionclea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static acileon:Lcom/alcineo/softpos/inolaec;

.field private static aoleinc:Lcom/alcineo/softpos/loaceni;

.field private static noaceli:Lcom/alcineo/softpos/oclniea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acileon()Lcom/alcineo/softpos/loaceni;
.end method

.method public static native acileon(Lcom/alcineo/softpos/inolaec;)V
.end method

.method public static native acileon(Lcom/alcineo/softpos/loaceni;)V
.end method

.method public static native acileon(Lcom/alcineo/softpos/oclniea;)V
.end method

.method public static native aoleinc()Lcom/alcineo/softpos/oclniea;
.end method

.method public static native noaceli()Lcom/alcineo/softpos/inolaec;
.end method
