.class public interface abstract Lcom/sleepycat/persist/DatabaseNamer;
.super Ljava/lang/Object;
.source "DatabaseNamer.java"


# static fields
.field public static final DEFAULT:Lcom/sleepycat/persist/DatabaseNamer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/sleepycat/persist/DatabaseNamer$1;

    invoke-direct {v0}, Lcom/sleepycat/persist/DatabaseNamer$1;-><init>()V

    sput-object v0, Lcom/sleepycat/persist/DatabaseNamer;->DEFAULT:Lcom/sleepycat/persist/DatabaseNamer;

    return-void
.end method


# virtual methods
.method public abstract getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
