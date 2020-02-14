export interface appBar { }
import { Widget } from 'flutter/widget';

interface AppBarProps {
    title: Widget;
}

declare const flutter: {
    material: {
        appBar: (this: void, props: AppBarProps) => appBar;
    }
}

export function AppBar(this: void, props: AppBarProps) {
    return flutter.material.appBar({ title: props.title });
}