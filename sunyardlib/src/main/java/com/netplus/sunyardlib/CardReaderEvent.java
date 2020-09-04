package com.netplus.sunyardlib;

public abstract class CardReaderEvent {

    public static class CardScanned extends CardReaderEvent {
        public CardScanned() {
        }
    }

    public static class CardRead<T> extends CardReaderEvent {
        private T data;

        public T getData() {
            return data;
        }

        public CardRead(T data) {
            this.data = data;
        }
    }

}
