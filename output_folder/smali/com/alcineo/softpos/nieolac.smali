.class public final Lcom/alcineo/softpos/nieolac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static acileon:Lorg/slf4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/nieolac;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/nieolac;->acileon:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acileon(Ljava/util/prefs/Preferences;Ljava/lang/String;I)I
.end method

.method public static native acileon(Ljava/util/prefs/Preferences;Ljava/lang/String;)Ljava/io/File;
.end method

.method public static native acileon(Ljava/util/prefs/Preferences;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/prefs/Preferences;",
            "Ljava/lang/String;",
            "[TT;TT;)TT;"
        }
    .end annotation
.end method

.method public static native acileon(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static acileon(Ljava/util/prefs/Preferences;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_0
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/alcineo/softpos/nieolac;->acileon:Lorg/slf4j/Logger;

    const-string v1, "Error while saving settings: "

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static native acileon(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/io/File;)V
.end method

.method public static native acileon(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/Preferences;",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation
.end method

.method public static native acileon(Ljava/util/prefs/Preferences;Ljava/lang/String;Z)Z
.end method

.method public static native aoleinc(Ljava/util/prefs/Preferences;Ljava/lang/String;)I
.end method

.method public static native aoleinc(Ljava/util/prefs/Preferences;Ljava/lang/String;I)V
.end method

.method public static native aoleinc(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native aoleinc(Ljava/util/prefs/Preferences;Ljava/lang/String;Z)V
.end method

.method public static native noaceli(Ljava/util/prefs/Preferences;Ljava/lang/String;)Ljava/lang/String;
.end method
