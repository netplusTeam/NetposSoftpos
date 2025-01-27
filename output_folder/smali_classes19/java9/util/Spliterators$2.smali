.class final Ljava9/util/Spliterators$2;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/Spliterators;->getBooleanPropVal(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defVal:Z

.field final synthetic val$prop:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 2445
    iput-boolean p1, p0, Ljava9/util/Spliterators$2;->val$defVal:Z

    iput-object p2, p0, Ljava9/util/Spliterators$2;->val$prop:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 3

    .line 2448
    iget-boolean v0, p0, Ljava9/util/Spliterators$2;->val$defVal:Z

    .line 2450
    .local v0, "val":Z
    :try_start_0
    iget-object v1, p0, Ljava9/util/Spliterators$2;->val$prop:Ljava/lang/String;

    iget-boolean v2, p0, Ljava9/util/Spliterators$2;->val$defVal:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2451
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2454
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2453
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2452
    :catch_1
    move-exception v1

    goto :goto_0

    .line 2455
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 2445
    invoke-virtual {p0}, Ljava9/util/Spliterators$2;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
