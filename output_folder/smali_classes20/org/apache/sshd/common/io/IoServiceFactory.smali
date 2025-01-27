.class public interface abstract Lorg/apache/sshd/common/io/IoServiceFactory;
.super Ljava/lang/Object;
.source "IoServiceFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/Closeable;
.implements Lorg/apache/sshd/common/io/IoServiceEventListenerManager;


# virtual methods
.method public abstract createAcceptor(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoAcceptor;
.end method

.method public abstract createConnector(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoConnector;
.end method
