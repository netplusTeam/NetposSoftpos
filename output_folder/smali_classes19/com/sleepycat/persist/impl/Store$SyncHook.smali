.class public interface abstract Lcom/sleepycat/persist/impl/Store$SyncHook;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncHook"
.end annotation


# virtual methods
.method public abstract onSync(Lcom/sleepycat/je/Database;)V
.end method
